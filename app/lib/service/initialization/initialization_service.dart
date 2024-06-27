import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:nw_advanced/component/operations.dart';
import 'package:nw_advanced/exceptions/application_exceptions.dart';
import 'package:nw_advanced/local_db/models/calculated_recipes.dart';
import 'package:nw_advanced/local_db/models/players.dart';
import 'package:nw_advanced/local_db/models/prices.dart';
import 'package:nw_advanced/local_db/models/recipes.dart';
import 'package:nw_advanced/local_db/service/local_db_service.dart';
import 'package:nw_advanced/service/data/data_service.dart';
import 'package:nw_advanced/service/data/global_variables.dart';
import 'package:nw_advanced/market/price_service.dart';
import 'package:nw_advanced/settings/settings.dart' as settings;

import '../../local_db/models/servers.dart';
import '../refining/refining_service.dart';

class InitializationService {
  static Future<void> initialize() async {
    const String operationName = "init";
    final int now = DateTime.now().millisecondsSinceEpoch;

    final bool op = await Operations.operation(name: operationName, start: now);
    if (!op) {
      return Future.value();
    }

    if (settings.designMode) {
      return GlobalVariables.initialize()
          .onError((error, stackTrace) {print(error); print(stackTrace);})
          .whenComplete(() => Operations.finish(operationName));
    } else {
      return GlobalVariables.initialize()
          .then((v) => DataService.update())
          .then((v) => PriceService.getPriceFromNwMarketPrices())
          .then((v) => RefiningService.calculateRecipes(GlobalVariables.server!.nwmpNo, GlobalVariables.player))
          .onError((error, stackTrace) {print(error); print(stackTrace);})
          .whenComplete(() => Operations.finish(operationName));
    }
  }

  /// If "player" is null. GlobalVariable.player is set to null.
  /// This method will not check whether the server_no matches the player or not. (NULL VALUE WON'T BE IGNORED!)
  /// (Such a check function may have unnecessary impact on the performance and the problem can be avoided if the methods calling this is designed carefully.)
  static Future<void> changeServerPlayer(int serverNo, Player? player) async {
    if (GlobalVariables.server?.nwmpNo == serverNo) {
      if (GlobalVariables.player?.id == player?.id) {
        return Future.value();
      } else {
        GlobalVariables.player = player;
        return RefiningService.calculateRecipes(GlobalVariables.server!.nwmpNo, GlobalVariables.player);
      }
    } else {
      GlobalVariables.player = player;

      return Future.wait([
        compute(_findServer, _FindServerArguments(serverNo, await GlobalVariables.isarArgs))
            .then((sv) => GlobalVariables.server = sv),
        RefiningService.calculateRecipes(GlobalVariables.server!.nwmpNo, GlobalVariables.player)
      ])
      .then((v) => null);
    }
  }

  static Future<Server> _findServer(_FindServerArguments args) {
    return LocalDatabaseService.isar(args.isarArgs)
        .then((isar) => isar.servers.get(args.serverId))
        .then((v) {
          if (v == null) {
            throw UnexpectedApplicationException(message: "Requested Server Entity (ID: ${args.serverId}) does not exist.");
          } else {
            return v;
          }
    });
  }
}

class _FindServerArguments {
  final int serverId;
  final IsarArguments isarArgs;

  _FindServerArguments(this.serverId, this.isarArgs);
}