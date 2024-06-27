import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:isar/isar.dart';
import 'package:nw_advanced/component/http.dart';
import 'package:nw_advanced/component/operations.dart';
import 'package:nw_advanced/exceptions/remote_data_access_exceptions.dart';
import 'package:nw_advanced/local_db/models/servers.dart';
import 'package:nw_advanced/local_db/service/local_db_service.dart';
import 'package:nw_advanced/market/nwmp_data_schema.dart';
import 'package:nw_advanced/service/data/global_variables.dart';
import 'package:nw_advanced/settings/settings.dart' as settings;

import '../exceptions/application_exceptions.dart';
import '../local_db/models/items.dart';
import '../local_db/models/prices.dart';

class PriceService {

  /// If "serverNo" attribute is given, get the price for the specified server,
  /// else the target server is automatically determined.
  static Future<void> getPriceFromNwMarketPrices({int? serverNo}) async {
    final int now = DateTime.now().millisecondsSinceEpoch;

    final List<dynamic> determinedServer = await determinNwmpServerUri(serverNo);

    final int number = determinedServer[0] as int;
    final Uri uri = determinedServer[1] as Uri;

    final String operationName = "nwmp_$number";

    // Operation Check
    final bool op = await Operations.operation(name: operationName, start: now);
    if (!op) {return Future.value();}

    // Date Check (Local)
    final int? lastUpdateCheck = GlobalVariables.userData.lastUpdateCheck[operationName];
    if (lastUpdateCheck != null && lastUpdateCheck > DateTime.now().millisecondsSinceEpoch - GlobalVariables.userData.priceUpdateCheckDuration) {
      // print("Price Data Update was skipped because it has recently been updated.");
      return Future.value();
    }

    // Main Update Process
    final int lastUpdate = GlobalVariables.userData.lastUpdate[operationName] ?? 0;
    return compute(_updatePriceData, _UpdatePriceDataArguments(number, uri, lastUpdate, GlobalVariables.userData.nwmpUpdateUri, await GlobalVariables.isarArgs))
        .then((i) {
          if(i > 0) {
            GlobalVariables.userData.lastUpdate[operationName] = i;
            GlobalVariables.userData.lastUpdateCheck[operationName] = now;
            return GlobalVariables.flushUserDataToDb();
          } else {
            GlobalVariables.userData.lastUpdateCheck[operationName] = now;
            return GlobalVariables.flushUserDataToDb();
          }
        })
        .whenComplete(() => Operations.finish(operationName));
  }

  /// RETURN: [0]: server no in int, [1]: server uri in Uri
  static Future<List<dynamic>> determinNwmpServerUri(int? serverNo) async {
    final List<dynamic> result = [];

    String? uri;
    if (settings.testMode) {
      result.add(0);
      uri = settings.nwmpTestDataUri;
    } else if (serverNo != null) {
      result.add(serverNo);
      uri = "${GlobalVariables.userData.nwmpBaseUri}/$serverNo/";
    } else {
      if (GlobalVariables.server != null) {
        result.add(GlobalVariables.server!.nwmpNo);
        uri = "${GlobalVariables.userData.nwmpBaseUri}/${GlobalVariables.server!.nwmpNo}/";
      } else if (GlobalVariables.player?.server != null) {
        final Server? server = await LocalDatabaseService.isar(await GlobalVariables.isarArgs)
            .then((i) => i.servers.getByName(GlobalVariables.player!.server!));
        if (server != null) {
          GlobalVariables.server = server;
          result.add(server.nwmpNo);
          uri = "${GlobalVariables.userData.nwmpBaseUri}/${server.nwmpNo}/";
        }
      }
    }
    if (uri == null) {
      final Server? server = await LocalDatabaseService.isar(await GlobalVariables.isarArgs).then((i) => i.servers.where().findFirst());
      if (server != null) {
        GlobalVariables.server = server;
        result.add(server.nwmpNo);
        uri = "${GlobalVariables.userData.nwmpBaseUri}/${server.nwmpNo}/";
      } else {
        throw DataNotInitializedException();
      }
    }

    if (GlobalVariables.userData.useSsl) {
      result.add(Uri.parse("https://$uri"));
    } else {
      result.add(Uri.parse("http://$uri"));
    }

    return result;
  }

  /// Isolation Compatible
  /// RETURN: [>0] file date (if updated), [-1] price data was already the latest and the update was skipped
  static Future<int> _updatePriceData(_UpdatePriceDataArguments args) async {
    // Remote Date Check
    late final Uri listUri;
    if (settings.useSsl) {
      listUri = Uri.parse("https://${args.nwmpUpdateUri}");
    } else {
      listUri = Uri.parse("http://${args.nwmpUpdateUri}");
    }

    final http.Response listRes = await HttpComponent.get(listUri);
    if (listRes.statusCode == 304) {
      return Future.value(-1);
    } else if (listRes.statusCode != 200) {
      throw RemoteDataAccessException(message: "Http GET Request for \"${listUri
          .toString()}\" failed with code ${listRes.statusCode}");
    }

    final List<ServerLastUpdated> servers = [];
    try {
      final String body = listRes.body;
      final Map<String, dynamic> map = jsonDecode(body);
      final List<dynamic> ls1 = List<dynamic>.from(map["server_last_updated"]);

      for (dynamic ls2 in ls1) {
        servers.add(ServerLastUpdated.fromList(List<dynamic>.from(ls2)));
      }
    } catch (e, _) {
      throw RemoteDataFormatException(
          message: "Failed to parse data from ${listUri.toString()}",
          cause: e,
          stackTrace: _
      );
    }

    final Iterable<ServerLastUpdated> it = servers
        .where((element) => element.serverNo == args.serverNo);
    final int length = it.length;
    if (length == 0) {
      throw RemoteDataFormatException(
          message: "No NWMP Data for server number ${args.serverNo}");
    }
    final ServerLastUpdated up = it.first;

    if (up.date <= args.lastUpdate) {
      return Future.value(-1);
    }

    final Future<Isar> isar = LocalDatabaseService.isar(args.isarArgs);

    final  Future<Iterable> iterable1 = http.get(args.uri)
        .then((value) => value.body)
        .then((value) => jsonDecode(value))
        .then((ls) sync* {
              for (Map<String, dynamic> map in ls) {
                yield Price.fromMap(map, args.serverNo);
              }
            });

    final Future<List<Price>> iterable2 = Future.wait([isar, iterable1])
        .then((list) sync* {
          final Isar isar = list[0] as Isar;
          final Iterable<Price> iterable = list[1] as Iterable<Price>;

          for (Price p in iterable) {
            final Price? old = isar.prices.getByServerIdItemIdSync(p.serverId, p.itemId);
            final Item? item = isar.items.getByItemIdSync(p.itemId);
            if (old == null) {
              if (item != null) {
                p.item.value = item;
              }
              yield p;
            } else if (old.lastUpdated == null || old.lastUpdated! < p.lastUpdated!) {
              if (item != null && old.item.value != item) {
                old.item.value = item;
              }
              yield old.update(p);
            }
          }
        })
        .then((it) => List<Price>.from(it));

    return Future.wait([isar, iterable2])
        .then((list) async{
          final Isar isar = list[0] as Isar;
          final List<Price> ls = list[1] as List<Price>;
          return isar.writeTxn((isar) async => await isar.prices.putAll(ls, replaceOnConflict: true));
        })
        .then((v) => up.date);

    // return Future.wait([isar, iterable])
    //   .then((ls) {
    //     final Isar isar = ls[0] as Isar;
    //     final IsarCollection<Item> col = isar.items;
    //     final Stream<Item> stream = ls[1] as Stream<Item>;
    //     final Stream<Item> converted = stream.transform(
    //       StreamTransformer<Item, Item>.fromBind((p0) {
    //         final StreamController<Item> controller = StreamController();
    //
    //         p0.forEach((element) async {
    //           await col.filter().itemIdEqualTo(element.itemId).findFirst().then(
    //                   (old) {
    //                     if (old == null) {
    //                       if (!controller.isClosed) {
    //                         controller.sink.add(element);
    //                       }
    //                     } else if (old.lastUpdated == null ||
    //                         old.lastUpdated! < element.lastUpdated!) {
    //                       if (!controller.isClosed) {
    //                         controller.sink.add(old.updatePrice(element));
    //                       }
    //                     }
    //                   });
    //         })
    //         .whenComplete(() => controller.sink);
    //
    //         return controller.stream;
    //       }));
    //
    //     return isar.writeTxn((isar) async {
    //       await converted.forEach((element) async {
    //         await isar.items.put(element, replaceOnConflict: true);
    //       });
    //     })
    //     .then((v) => up.date);
    //   });
    // }
  }
}

class _UpdatePriceDataArguments {
  final int serverNo;
  final Uri uri;
  final int lastUpdate;
  final String nwmpUpdateUri;
  final IsarArguments isarArgs;

  _UpdatePriceDataArguments(
      this.serverNo, this.uri, this.lastUpdate, this.nwmpUpdateUri, this.isarArgs);
}