import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:nw_advanced/local_db/models/servers.dart';
import 'package:nw_advanced/local_db/models/user_data.dart';
import 'package:nw_advanced/local_db/models/players.dart';
import 'package:path_provider/path_provider.dart';

import '../../local_db/service/local_db_service.dart';

class GlobalVariables {
  static late UserData userData;
  static Player? player;
  static Server? server;
  static IsarArguments? _isarArgs;

  static Future<IsarArguments> get isarArgs {
    if (_isarArgs == null) {
      if (kIsWeb) {
        _isarArgs = IsarArguments(true, null, LocalDatabaseService.schemas);
        return Future.value(_isarArgs);
      } else {
        return getApplicationSupportDirectory()
            .then((dir) => dir.path)
            .then((dir) {
          _isarArgs = IsarArguments(false, dir, LocalDatabaseService.schemas);
          return _isarArgs!;
        });
      }
    } else {
      return Future.value(_isarArgs);
    }
}

  static Future<void> initialize() async {
    if (kIsWeb) {
      _isarArgs = IsarArguments(true, null, LocalDatabaseService.schemas);
    } else {
      _isarArgs = IsarArguments(false, (await getApplicationSupportDirectory()).path, LocalDatabaseService.schemas);
    }

    final IsarCollection<UserData> ucol = await LocalDatabaseService.isar(_isarArgs!).then((value) => value.userDatas);
    final IsarCollection<Player> pcol = await LocalDatabaseService.isar(_isarArgs!).then((value) => value.players);
    final IsarCollection<Server> scol = await LocalDatabaseService.isar(_isarArgs!).then((value) => value.servers);

    final UserData? dt = await ucol.where().findFirst();
    if (dt == null) {
      userData = UserData.initialized();
      await flushUserDataToDb();
    } else {
      userData = dt;
    }

    // determine PLAYER

    if (userData.currentPlayerId != null) {

      final Player? pl = await pcol.get(userData.currentPlayerId!);
      if (pl != null) {
        player = pl;
      }
    }

    if (player == null) {

      final Player? pl = await pcol.where().findFirst();
      if (pl != null) {
        player = pl;
      }
    }

    // Determine Server
    if (player?.server != null) {
      final Server? sv = await scol.filter().nameEqualTo(player!.server!).findFirst();
      if (sv != null) {
        server = sv;
      }
    }

    if (server == null) {
      final Server? sv = await scol.where().findFirst();
      server = sv;
    }

    // print(userData.toMap);
    // print(player);
    // print(server);
  }

  static Future<void> flushUserDataToDb() async {
    return compute(_flushUserDataToDbInternal, _FlushUserDataArguments(userData, await isarArgs));
  }

  /// Isolation Compatible
  static Future<void> _flushUserDataToDbInternal(_FlushUserDataArguments args) async {
    final Isar isar = await LocalDatabaseService.isar(args.isarArgs);
    return isar.writeTxn((isar) async {
      await isar.userDatas.put(args.user, replaceOnConflict: true);
    });
  }

  static Future<void> flushPlayerDataToDb() async {
    if (player == null) {
      return Future.value();
    } else {
      return compute(_flushPlayerDataToDbInternal, _FlushPlayerDataArguments(player!, await isarArgs));
    }
  }

  static Future<void> _flushPlayerDataToDbInternal(_FlushPlayerDataArguments args) {
    return LocalDatabaseService.isar(args.isarArgs)
        .then((isar) => isar.writeTxn(
            (isar) async => await isar.players.put(args.player, replaceOnConflict: true)));
  }
}

class _FlushUserDataArguments {
  final UserData user;
  final IsarArguments isarArgs;

  _FlushUserDataArguments(this.user, this.isarArgs);
}

class _FlushPlayerDataArguments {
  final Player player;
  final IsarArguments isarArgs;

  _FlushPlayerDataArguments(this.player, this.isarArgs);
}