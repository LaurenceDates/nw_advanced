import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:nw_advanced/component/http.dart';
import 'package:isar/isar.dart';
import 'package:nw_advanced/component/operations.dart';
import 'package:nw_advanced/exceptions/remote_data_access_exceptions.dart';
import 'package:nw_advanced/local_db/models/info.dart';
import 'package:nw_advanced/local_db/models/items.dart';
import 'package:nw_advanced/local_db/models/servers.dart';
import 'package:nw_advanced/local_db/service/local_db_service.dart';
import 'package:nw_advanced/service/data/global_variables.dart';
import 'package:nw_advanced/settings/settings.dart' as settings;
import '../../local_db/models/recipes.dart';

part 'data_schema.dart';

class DataService {

  static Future<void> update() async {
    const String operationName = "update_info.json";
    const String fileName = "info.json";

    final int now = DateTime.now().millisecondsSinceEpoch;
    final bool op = await Operations.operation(name: operationName, start: now);
    if (!op) {return Future.value();}

    // Skip Update if recently checked
    final int? infoLastUpdateCheck = GlobalVariables.userData.lastUpdateCheck[fileName];
    if (infoLastUpdateCheck != null && infoLastUpdateCheck > now - GlobalVariables.userData.dataUpdateCheckDuration){
      return Future(() => Operations.finish(operationName));
    }

    late final Uri uri;
    if (settings.useSsl) {
      uri = Uri.parse("https://${settings.infoFileUri}");
    } else {
      uri = Uri.parse("http://${settings.infoFileUri}");
    }
    final Map<String, String> headers = {};
    final int? infoLastUpdate = GlobalVariables.userData.lastUpdate[fileName];
    if (infoLastUpdate != null) {
      headers["If-Modified-Since"] = HttpComponent.convertToRFC1123Datetime(infoLastUpdate);
    }

    final Response response = await HttpComponent.get(uri, headers: headers);

    // if 304: not modified
    if (response.statusCode == 304) {
      GlobalVariables.userData.lastUpdateCheck[fileName] = now;
      return GlobalVariables.flushUserDataToDb()
          .whenComplete(() => Operations.finish(operationName));
    } else if (response.statusCode != 200) { // fail if not 200
      Operations.finish(operationName);
      throw RemoteDataAccessException(message: "Http GET Request for \"${uri.toString()}\" failed with code ${response.statusCode}");
    }

    final InfoFile info = InfoFile.fromMap(convertServerJsonFile(response));

    // TODO: Variables Update (main Thread)


    // Update Files (Isolations)
    final List<Future<void>> fileUpdateOperations = [];
    for (DataFile f in info.files) {
      final int? fileDate = GlobalVariables.userData.lastUpdate[f.name];

      late final Uri uri;
      if (settings.useSsl) {
        uri = Uri.parse("https://${GlobalVariables.userData.dataFileBaseUri}/${f.name}");
      } else {
        uri = Uri.parse("http://${GlobalVariables.userData.dataFileBaseUri}/${f.name}");
      }

      if (fileDate == null) { // need to download
        fileUpdateOperations.add(
            compute(_save, _DataFileUpdateArguments(f.name, uri, await GlobalVariables.isarArgs))
                .then((v) => GlobalVariables.userData.lastUpdate[f.name] = f.date)
        );
      } else if (fileDate < f.date) { // need to replace
        fileUpdateOperations.add(
            compute(_replace, _DataFileUpdateArguments(f.name, uri, await GlobalVariables.isarArgs))
                .then((v) => GlobalVariables.userData.lastUpdate[f.name] = f.date)
        );
      }
    }

    return Future.wait<void>(fileUpdateOperations)
        .then((v) {
          GlobalVariables.userData.lastUpdateCheck[fileName] = now;
          return GlobalVariables.flushUserDataToDb();
        })
        .whenComplete(() => Operations.finish(operationName));
  }



  static Map<String, dynamic> convertServerJsonFile(Response response) {
    return jsonDecode(response.body);
  }


  /// Isolation Compatible
  static Future<void> _save(_DataFileUpdateArguments args) async {
    final Future<Isar> isar = LocalDatabaseService.isar(args.isar);
    final Future<String> body = Future(() async {
      final Response res = await HttpComponent.get(args.uri);
      if (res.statusCode != 200) {
        throw RemoteDataAccessException(message: "Http GET Request for \"${args.uri.toString()}\" Failed with code ${res.statusCode}");
      } else {
        return res.body;
      }
    });

    if (args.name.startsWith("server_definition")) {
      final Future<List<Server>> data = body
          .then((s) sync* {
            final Map<String, dynamic> map = jsonDecode(s);
            final List<dynamic> list = List<dynamic>.from(map["server_definition"]);
            if (list.isEmpty) {throw RemoteDataFormatException(message: "Failed to convert a server_definition file.");}
            for (dynamic m in list) {
              yield Server.fromMap(Map<String, dynamic>.from(m), args.name);
            }
          })
          .then((it) => List<Server>.from(it));
      return Future.wait([isar, data])
          .then((ls) {
            final Isar isar = ls[0] as Isar;
            final List<Server> servers = ls[1] as List<Server>;
            return isar.writeTxn((isar) async => await isar.servers.putAll(servers, replaceOnConflict: true));
      });
    } else if (args.name.startsWith("item_definition")) {
      final Future<List<Item>> data = body
          .then((s) sync* {
            final Map<String, dynamic> map = jsonDecode(s);
            final List<dynamic> list = List<dynamic>.from(map["item_definition"]);
            if (list.isEmpty) {throw RemoteDataFormatException(message: "Failed to convert a item_definition file.");}
            for (dynamic m in list) {
              yield Item.fromMap(Map<String, dynamic>.from(m), args.name);
            }
          })
          .then((it) => List<Item>.from(it));
      return Future.wait([isar, data])
          .then((ls) {
        final Isar isar = ls[0] as Isar;
        final List<Item> items = ls[1] as List<Item>;
        return isar.writeTxn((isar) async => await isar.items.putAll(items, replaceOnConflict: true));
      });
    } else if (args.name.startsWith("recipe_definition")) {
      final Future<List<Recipe>> data = body
          .then((s) sync* {
        final Map<String, dynamic> map = jsonDecode(s);
        final List<dynamic> list = List<dynamic>.from(map["recipe_definition"]);
        if (list.isEmpty) {throw RemoteDataFormatException(message: "Failed to convert a recipe_definition file.");}
        for (dynamic m in list) {
          yield Recipe.fromMap(Map<String, dynamic>.from(m), args.name);
        }
      })
          .then((it) => List<Recipe>.from(it));
      return Future.wait([isar, data])
          .then((ls) {
        final Isar isar = ls[0] as Isar;
        final List<Recipe> recipes = ls[1] as List<Recipe>;
        return isar.writeTxn((isar) async => await isar.recipes.putAll(recipes, replaceOnConflict: true));
      });
    } else {
      throw RemoteDataFormatException(message: "\"${args.name}\" is Invalid File Name for this version.");
    }

  }

  /// Isolation Compatible
  static Future<void> _replace(_DataFileUpdateArguments args) async {
    final Future<Isar> isar = LocalDatabaseService.isar(await GlobalVariables.isarArgs);
    late final Future<String> body;
    if (args.delay == null) {
      body = Future(() async {
        final Response res = await HttpComponent.get(args.uri);
        if (res.statusCode != 200) {
          throw RemoteDataAccessException(message: "Http GET Request for \"${args.uri.toString()}\" Failed with code ${res.statusCode}");
        } else {
          return res.body;
        }
      });
    } else {
      body = Future.delayed(
        Duration(milliseconds: args.delay!),
        () async {
          final Response res = await HttpComponent.get(args.uri);
          if (res.statusCode != 200) {
              throw RemoteDataAccessException(message: "Http GET Request for \"${args.uri.toString()}\" Failed with code ${res.statusCode}");
            } else {
              return res.body;
            }
        });
    }

    if (args.name.startsWith("server_definition")) {
      final Future<List<Server>> data = body
          .then((s) sync* {
            final Map<String, dynamic> map = jsonDecode(s);
            final List<dynamic> list = List<dynamic>.from(map["server_definition"]);
            if (list.isEmpty) {throw RemoteDataFormatException(message: "Failed to convert a server_definition file.");}
            for (dynamic m in list) {
              yield Server.fromMap(Map<String, dynamic>.from(m), args.name);
            }
          })
          .then((it) => List<Server>.from(it));

      return Future.wait([isar, data])
          .then((ls) {
            final Isar isar = ls[0] as Isar;
            final List<Server> servers = ls[1] as List<Server>;
            return isar.writeTxn((isar) async {
              await isar.servers.filter().definitionFileEqualTo(args.name).deleteAll();
              await isar.servers.putAll(servers, replaceOnConflict: true);
            });
          });
    } else if (args.name.startsWith("item_definition")) {
      final Future<List<Item>> data = body
          .then((s) sync* {
            final Map<String, dynamic> map = jsonDecode(s);
            final List<dynamic> list = List<dynamic>.from(map["item_definition"]);
            if (list.isEmpty) {throw RemoteDataFormatException(message: "Failed to convert a item_definition file.");}
            for (dynamic m in list) {
              yield Item.fromMap(Map<String, dynamic>.from(m), args.name);
            }
          })
          .then((it) => List<Item>.from(it));

      return Future.wait([isar, data])
          .then((ls) {
            final Isar isar = ls[0] as Isar;
            final List<Item> items = ls[1] as List<Item>;
            return isar.writeTxn((isar) async {
              await isar.items.filter().definitionFileEqualTo(args.name).deleteAll();
              await isar.items.putAll(items, replaceOnConflict: true);
            });
          });
    } else if (args.name.startsWith("recipe_definition")) {
      final Future<List<Recipe>> data = body
          .then((s) sync* {
        final Map<String, dynamic> map = jsonDecode(s);
        final List<dynamic> list = List<dynamic>.from(map["recipe_definition"]);
        if (list.isEmpty) {throw RemoteDataFormatException(message: "Failed to convert a recipe_definition file.");}
        for (dynamic m in list) {
          yield Recipe.fromMap(Map<String, dynamic>.from(m), args.name);
        }
      })
          .then((it) => List<Recipe>.from(it));

      return Future.wait([isar, data])
          .then((ls) {
        final Isar isar = ls[0] as Isar;
        final List<Recipe> recipes = ls[1] as List<Recipe>;
        return isar.writeTxn((isar) async {
          await isar.recipes.filter().definitionFileEqualTo(args.name).deleteAll();
          await isar.recipes.putAll(recipes, replaceOnConflict: true);
        });
      });
    } else {
      throw RemoteDataFormatException(message: "\"${args.name}\" is Invalid File Name for this version.");
    }

  }
}

/// Isolation Arguments
class _DataFileUpdateArguments {
  final String name;
  final Uri uri;
  final IsarArguments isar;
  final int? delay;

  _DataFileUpdateArguments(this.name, this.uri, this.isar, {this.delay});
}