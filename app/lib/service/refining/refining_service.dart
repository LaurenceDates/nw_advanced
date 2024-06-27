import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:nw_advanced/component/operations.dart';
import 'package:nw_advanced/local_db/models/calculated_recipes.dart';
import 'package:nw_advanced/local_db/models/players.dart';
import 'package:nw_advanced/local_db/models/prices.dart';
import 'package:nw_advanced/local_db/models/recipes.dart';
import 'package:nw_advanced/local_db/models/user_data.dart';
import 'package:nw_advanced/local_db/service/local_db_service.dart';
import 'package:nw_advanced/service/data/global_variables.dart';

class RefiningService {
  static Future<List<CalculatedRecipe>> findCalculatedRecipesByCraftedItemId(int serverId, int? playerIsarId, String craftedItemId) async {
    return compute(_findCalculatedRecipesByCraftedItemIdInternal, _FindCalculatedRecipesByCraftedItemIdArguments(serverId, playerIsarId, craftedItemId, await GlobalVariables.isarArgs));
  }

  static Future<List<CalculatedRecipe>> _findCalculatedRecipesByCraftedItemIdInternal(_FindCalculatedRecipesByCraftedItemIdArguments args) {
    return LocalDatabaseService.isar(args.isarArgs)
        .then((i) => i.calculatedRecipes)
        .then((c) => c.filter().serverIdEqualTo(args.serverId).and().playerIsarIdEqualTo(args.playerIsarId).and().craftedItemIdEqualTo(args.itemId).sortByCost().findAll());
  }

  static Future<CalculatedRecipe?> findLowestCostRecipeByCraftedItemId(int serverId, int? playerIsarId, String craftedItemId) async {
    return compute(_findLowestCostRecipeByCraftedItemIdInternal, _FindCalculatedRecipesByCraftedItemIdArguments(serverId, playerIsarId, craftedItemId, await GlobalVariables.isarArgs));
  }

  static Future<CalculatedRecipe?> _findLowestCostRecipeByCraftedItemIdInternal(_FindCalculatedRecipesByCraftedItemIdArguments args) {
    return LocalDatabaseService.isar(args.isarArgs)
        .then((i) => i.calculatedRecipes)
        .then((c) => c.filter().serverIdEqualTo(args.serverId).and().playerIsarIdEqualTo(args.playerIsarId).and().craftedItemIdEqualTo(args.itemId).sortByCost().findFirst());
  }

  static Future<void> calculateRecipes(int serverId, Player? player) async {
    late final String operationName;
    if (player == null) {
      operationName = "calc_recipes_sv$serverId";
    } else {
      operationName = "calc_recipes_sv${serverId}_p${player.id}";
    }

    final int now = DateTime.now().millisecondsSinceEpoch;
    final bool op = await Operations.operation(name: operationName, start: now);
    if (!op) {return Future.value();}

    return compute(_calculateRecipesInternal, _RecipeCalculationArguments(10, await GlobalVariables.isarArgs, GlobalVariables.userData, serverId, player))
        .whenComplete(() => Operations.finish(operationName));
  }

  static Future<void> _calculateRecipesInternal(_RecipeCalculationArguments args) async {
    final Isar isar = await LocalDatabaseService.isar(args.isarArgs);
    final List<Recipe> input = await isar.recipes.where().findAll();
    final List<CalculatedRecipe> output = [];

    _recursiveCall(input, output, isar, args.recursiveLimit, args.user, args.serverId, args.player);

    return isar.writeTxn((isar) async => await isar.calculatedRecipes.putAll(output, replaceOnConflict: true));
  }

  static void _combinations <T> (int i, List<List<T>> input, List<List<T>> output, List<T> tmp) {
    if (i == input.length) {
      output.add(tmp);
      return;
    }
    for (int j = 0 ; j != input[i].length ; j++) {
      final List<T> tmp2 = List.from(tmp);
      tmp2.add(input[i][j]);
      _combinations(i+1, input, output, tmp2);
    }
  }

  static void _recursiveCall(List<Recipe> input, List<CalculatedRecipe> output, Isar isar, int recursiveLimit, UserData user, int serverId, Player? player) {
    final List<Recipe> newList = [];

    for (Recipe r in input) {
      // If includes unprocessed craftable ingredient, ignore it for now.
      final List<Material> allMats = [];
      for (Ingredient ingredient in r.ingredients) {
        for (Material mat in ingredient.mats) {
          allMats.add(mat);
        }
      }

      if (allMats.any((el1) =>
          input.any((el2) => el2.craftedItemId == el1.id))) {
        newList.add(r);
        continue;
      }

      // Prepare Input List
      final List<List<MatCalculationTmp>> inp = [];
      for (Ingredient ingredient in r.ingredients) {
        List<MatCalculationTmp> tmp = [];
        for (Material mat in ingredient.mats) {
          tmp.add(MatCalculationTmp(mat, ingredient.amount, mat.extraItemChance));
        }
        inp.add(tmp);
      }

      // Create material combination list
      final List<List<MatCalculationTmp>> combinations = [];
      _combinations<MatCalculationTmp>(0, inp, combinations, []);

      for (List<MatCalculationTmp> el3 in combinations) {
        // calculate craft chance here
        final double chance = _calculateExtraItemChance(r, el3, user, player);

        final List<CalculatedRecipeIngredient> igs = [];

        for (MatCalculationTmp el4 in el3) {
          final Price? pp = isar.prices.getByServerIdItemIdSync(serverId, el4.mat.id);
          CalculatedRecipe? rr;
          if (pp == null) {
            final Iterable<CalculatedRecipe> it = output.where((element) => element.craftedItemId == el4.mat.id);
            if (it.isNotEmpty) {
              rr = it.first;
            }
          }
          if (pp == null && rr == null) {print("NOT FOUND: ${el4.mat.id}");} else {
            final String name = pp?.itemName ?? rr?.craftedItemId ?? "";
            // igs.add(CalculatedRecipeIngredient(el4.mat.id, name, el4.rawAmount / (r.amount * chance)));
            igs.add(CalculatedRecipeIngredient(el4.mat.id, name, el4.rawAmount / (r.amount * chance)));
          }
        }

        // Calculate Cost (Ingredients)
        double cost = 0.0;
        for (CalculatedRecipeIngredient ig in igs) {
          double costTmp = 0.0;
          // Crafting Cost
          final Iterable<CalculatedRecipe> it = output.where((element) => element.craftedItemId == ig.itemId);
          for (CalculatedRecipe rr in it) {
            if (costTmp == 0.0 || costTmp > rr.cost) {
              costTmp = rr.cost;
            }
          }

          // TODO: Calculate Transaction Fee
          // Purchase Cost
          final Price? pp = isar.prices.getByServerIdItemIdSync(serverId, ig.itemId);
          if (pp?.price != null) {
            if (costTmp == 0.0 || costTmp > pp!.price!) {
              costTmp = pp!.price!;
            }
          }

          cost += costTmp * ig.amount;
        }

        // Calculate Cost (Refining Tax)
        if (player?.stationTaxRate != null) {
          cost += (r.tax * player!.stationTaxRate!)/ (r.amount * chance);
        } else {
          cost += (r.tax * user.defaultStationTaxRate)/ (r.amount * chance);
        }

        final CalculatedRecipe cr = CalculatedRecipe.newEntity(
          serverId, player?.id, r.craftedItemId, r.craftedItemName, igs, cost);

        print("recipe: $cr");
        print(chance);

        output.add(cr);
      }
    }

    if (newList.isNotEmpty && recursiveLimit > 0) {
      _recursiveCall(newList, output, isar, recursiveLimit -1, user, serverId, player);
    }
  }

  static double _calculateExtraItemChance(Recipe r, List<MatCalculationTmp> tmp, UserData user, Player? player) {
    // Base
    int chance = r.extraItemChance;
    print("BASE: $chance");
    // Ingredient Bonus
    for (MatCalculationTmp mat in tmp) {
      if (mat.extraItemChance != null) {
        chance += mat.extraItemChance!;
      }
    }

    // Territory Bonus
    if (player?.territoryRefiningBonus != null) {
      chance += player!.territoryRefiningBonus!;
    } else {
      chance += user.defaultTerritoryRefiningBonus;
    }
    print("TER: $chance");

    // Player Bonus
    switch (r.skill) {
      case "leatherworking":
        if (player?.leatherworking == null) {
          chance += (user.defaultRefiningLevel / 10).floor();
        } else {
          chance += (player!.leatherworking! / 10).floor();
        }
        if (player?.leatherworkingRefiningBonus == null) {
          chance += user.defaultRefiningBonus;
        } else {
          chance += player!.leatherworkingRefiningBonus!;
        }
        break;
      case "smelting":
        if (player?.smelting == null) {
          chance += (user.defaultRefiningLevel / 10).floor();
        } else {
          chance += (player!.smelting! / 10).floor();
        }
        if (player?.smeltingRefiningBonus == null) {
          chance += user.defaultRefiningBonus;
        } else {
          chance += player!.smeltingRefiningBonus!;
        }
        break;
      case "stonecutting":
        if (player?.stonecutting == null) {
          chance += (user.defaultRefiningLevel / 10).floor();
        } else {
          chance += (player!.stonecutting! / 10).floor();
        }
        if (player?.stonecuttingRefiningBonus == null) {
          chance += user.defaultRefiningBonus;
        } else {
          chance += player!.stonecuttingRefiningBonus!;
        }
        break;
      case "weaving":
        if (player?.weaving == null) {
          chance += (user.defaultRefiningLevel / 10).floor();
        } else {
          chance += (player!.weaving! / 10).floor();
        }
        if (player?.weavingRefiningBonus == null) {
          chance += user.defaultRefiningBonus;
        } else {
          chance += player!.weavingRefiningBonus!;
        }
        break;
      case "woodworking":
        if (player?.woodworking == null) {
          chance += (user.defaultRefiningLevel / 10).floor();
        } else {
          chance += (player!.woodworking! / 10).floor();
        }
        if (player?.woodworkingRefiningBonus == null) {
          chance += user.defaultRefiningBonus;
        } else {
          chance += player!.woodworkingRefiningBonus!;
        }
        break;
      case "arcana":
        if (player?.arcana == null) {
          chance += (user.defaultCraftingLevel / 10).floor();
        } else {
          chance += (player!.arcana! / 10).floor();
        }
        break;
      case "aromoring":
      if (player?.armoring == null) {
        chance += (user.defaultCraftingLevel / 10).floor();
      } else {
        chance += (player!.armoring! / 10).floor();
      }
      break;
      case "cooking":
        if (player?.cooking == null) {
          chance += (user.defaultCraftingLevel / 10).floor();
        } else {
          chance += (player!.cooking! / 10).floor();
        }
        if (player?.cookingBonus == null) {
          chance += user.defaultRefiningBonus;
        } else {
          chance += player!.cookingBonus!;
        }
        break;
      case "engineering":
        if (player?.engineering == null) {
          chance += (user.defaultCraftingLevel / 10).floor();
        } else {
          chance += (player!.engineering! / 10).floor();
        }
        break;
      case "furnishing":
        if (player?.furnishing == null) {
          chance += (user.defaultCraftingLevel / 10).floor();
        } else {
          chance += (player!.furnishing! / 10).floor();
        }
        break;
      case "jewelcrafting":
        if (player?.jewelcrafting == null) {
          chance += (user.defaultCraftingLevel / 10).floor();
        } else {
          chance += (player!.jewelcrafting! / 10).floor();
        }
        break;
      case "weaponsmithing":
        if (player?.weaponsmithing == null) {
          chance += (user.defaultCraftingLevel / 10).floor();
        } else {
          chance += (player!.weaponsmithing! / 10).floor();
        }
        break;
      default: return 1.0;
    }

    if (chance > 0) {
      return chance /100 + 1;
    } else {
      return 1.0;
    }
  }
}

class MatCalculationTmp {
  Material mat;
  int rawAmount;
  int? extraItemChance;

  MatCalculationTmp(this.mat, this.rawAmount, this.extraItemChance);

}

class _FindCalculatedRecipesByCraftedItemIdArguments {
  final int serverId;
  final int? playerIsarId;
  final String itemId;
  final IsarArguments isarArgs;

  _FindCalculatedRecipesByCraftedItemIdArguments(this.serverId, this.playerIsarId, this.itemId, this.isarArgs);


}

class _RecipeCalculationArguments {
  final int recursiveLimit;
  final UserData user;
  final int serverId;
  final Player? player;
  final IsarArguments isarArgs;

  _RecipeCalculationArguments(this.recursiveLimit, this.isarArgs, this.user, this.serverId, this.player);
}
