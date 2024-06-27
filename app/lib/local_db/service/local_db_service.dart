import 'package:isar/isar.dart';
import 'package:nw_advanced/local_db/models/calculated_recipes.dart';

import 'package:nw_advanced/local_db/models/info.dart';
import 'package:nw_advanced/local_db/models/items.dart';
import 'package:nw_advanced/local_db/models/players.dart';
import 'package:nw_advanced/local_db/models/prices.dart';
import 'package:nw_advanced/local_db/models/recipes.dart';
import 'package:nw_advanced/local_db/models/servers.dart';
import 'package:nw_advanced/local_db/models/user_data.dart';

import '../../exceptions/local_database_exceptions.dart';

class LocalDatabaseService {
  static const List<CollectionSchema> schemas = [
    CalculatedRecipeSchema,
    InfoSchema,
    ItemSchema,
    PlayerSchema,
    PriceSchema,
    RecipeSchema,
    ServerSchema,
    UserDataSchema
  ];

  /// Isolation Compatible
  static Future<Isar> isar(IsarArguments args) {
    final Isar? instance = Isar.getInstance();
    if (instance != null) {
      return Future.value(instance);
    } else {
      if (args.isWeb) {
        return Isar.open(schemas: List.from(args.schemas));
      } else {
        if (args.dir == null) {
          throw LocalDatabaseInitializationFailureException(message: "ApplicationSupportDirectory must be specified for non-web database initialization.");
        } else {
          return Isar.open(schemas: List.from(args.schemas), directory: args.dir);
        }
      }
    }
  }
}

/// Isolation Arguments
class IsarArguments {
  final bool isWeb;
  final String? dir;
  final List<CollectionSchema> schemas;

  IsarArguments(this.isWeb, this.dir, this.schemas);
}