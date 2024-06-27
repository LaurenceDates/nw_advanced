import 'dart:convert';

import 'package:isar/isar.dart';

part 'calculated_recipes.g.dart';

@Collection()
class CalculatedRecipe {
  int id = Isar.autoIncrement;

  @Index(composite:[CompositeIndex("playerIsarId"), CompositeIndex("craftedItemId", caseSensitive: false, type: IndexType.hash)])
  @Index(composite:[CompositeIndex("playerIsarId"), CompositeIndex("craftedItemName", caseSensitive: false, type: IndexType.value)])
  late int serverId;
  int? playerIsarId;
  late String craftedItemId;
  late String craftedItemName;
  @CalculatedRecipeIngredientConverter()
  late List<CalculatedRecipeIngredient> ingredients;
  late double cost;

  @Index(unique: true)
  late int hash;

  CalculatedRecipe();

  CalculatedRecipe.newEntity(this.serverId, this.playerIsarId, this.craftedItemId, this.craftedItemName, this.ingredients, this.cost) {
    hash = _calculateHash();
  }

  Map<String, dynamic> get toMap => {
    "server_id": serverId,
    "player_isar_id": playerIsarId,
    "crafted_item_id": craftedItemId,
    "crafted_item_name": craftedItemName,
    "ingredients": ingredients,
    "cost": cost
  };

  @override
  String toString() => toMap.toString();

  int _calculateHash() {
    return calculateHash(craftedItemId, ingredients, serverId, playerIsarId);
  }

  static int calculateHash(String craftedItemId, List<CalculatedRecipeIngredient> ingredients, int serverId, int? playerIsarId) {
    int tmp = 0;
    tmp = craftedItemId.hashCode;
    tmp += ingredients.hashCode;
    tmp += serverId + 1000;
    if (playerIsarId != null) {
      tmp += playerIsarId;
    }
    return tmp;
  }
}

class CalculatedRecipeIngredient {
  String itemId;
  String itemName;
  double amount;

  CalculatedRecipeIngredient(
      this.itemId, this.itemName, this.amount);

  CalculatedRecipeIngredient.fromMap(Map<String, dynamic> map):
      this(map["item_id"],map["item_name"],map["amount"]);

  Map<String, dynamic> get toMap => {
    "item_id": itemId,
    "item_name": itemName,
    "amount": amount
  };

  @override
  String toString() => toMap.toString();
}

class CalculatedRecipeIngredientConverter extends TypeConverter<List<CalculatedRecipeIngredient>, String> {
  const CalculatedRecipeIngredientConverter();

  @override
  List<CalculatedRecipeIngredient> fromIsar(String object) {

    final List<dynamic> list1 = jsonDecode(object);
    final List<CalculatedRecipeIngredient> list2 = [];

    for (dynamic map in list1) {
      list2.add(CalculatedRecipeIngredient.fromMap(Map.from(map)));
    }
    return list2;
  }

  @override
  String toIsar(List<CalculatedRecipeIngredient> object) {
    final List<Map<String, dynamic>> list = [];
    for (CalculatedRecipeIngredient i in object) {
      list.add(i.toMap);
    }
    return jsonEncode(list);
  }
}