import 'dart:convert';

import 'package:isar/isar.dart';
part 'recipes.g.dart';

@Collection()
class Recipe {
  int id = Isar.autoIncrement;

  @Index(unique: true, type: IndexType.hash)
  late String recipeId;
  @Index(type: IndexType.hash)
  late String recipeName;
  @Index(type: IndexType.hash)
  late String definitionFile;
  late String craftedItemId;
  late String craftedItemName;
  late int amount;
  late String station;
  late String skill;
  @IngredientConverter()
  late List<Ingredient> ingredients;
  late double tax;
  late int extraItemChance;

  Recipe();

  Recipe.newEntity(this.recipeId, this.recipeName, this.definitionFile, this.craftedItemId, this.craftedItemName, this.amount, this.station, this.skill,
      this.ingredients, this.tax, this.extraItemChance);

  factory Recipe.fromMap(Map<String, dynamic> map, String definitionFile) {
    final List<Ingredient> list = [];
    for (final i in List.from(map["ingredients"])) {
      final Map<String, dynamic> m = Map.from(i);
      final Ingredient ing = Ingredient.fromMap(m);
      list.add(ing);
    }
    late final double tax;
    if (map["tax"] is double) {tax = map["tax"];}
    else if (map["tax"] is int) {tax = map["tax"] + 0.0;}
    else if (map["tax"] is String) {tax = double.parse(map["tax"]);}


    var entity = Recipe.newEntity(map["id"], map["name"], definitionFile, map["crafted_item_id"], map["crafted_item_name"], map["amount"], map["station"], map["skill"], list, tax, map["extra_item_chance"]);

    return entity;
  }

  Map<String, dynamic> get toMap {
    final List<Map<String, dynamic>> list = [];

    for (Ingredient i in ingredients!) {
      list.add(i.toMap);
    }

    return {
      "recipe_id": recipeId,
      "recipe_name": recipeName,
      "definition_file": definitionFile,
      "crafted_item_id": craftedItemId,
      "crafted_item_name": craftedItemName,
      "amount": amount,
      "station": station,
      "skill": skill,
      "ingredients": list,
      "tax": tax,
      "extra_item_chance": extraItemChance
    };
  }

  @override
  String toString() => toMap.toString();
}

class Ingredient {
  late String slotName;
  late List<Material> mats;
  late int amount;

  Ingredient();

  Ingredient.newEntity(this.slotName, this.mats, this.amount);

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    final Ingredient entity = Ingredient.newEntity(map["slot_name"], <Material>[], map["amount"]);

    for (final mat in List.from(map["mats"])) {
      entity.mats.add(Material.fromMap(Map<String, dynamic>.from(mat)));
    }

    return entity;
  }

  Map<String, dynamic> get toMap {
    final List<Map<String, dynamic>> mats = [];
    for(Material mat in this.mats) {
      mats.add(mat.toMap);
    }

    return {
      "slot_name": slotName,
      "mats": mats,
      "amount": amount
    };

  }
}

class Material {
  late String id;
  int? extraItemChance;

  Material();

  Material.newEntity(this.id, this.extraItemChance);

  factory Material.fromMap(Map<String, dynamic> map) {
    final Material entity = Material.newEntity(map["id"], null);

    if (map["mod"] != null) {
      final Map<String, dynamic> mod = map["mod"];
      final int? eic = mod["extra_item_chance"];
      if (eic != null) {
        entity.extraItemChance = eic;
      }
    }

    return entity;
  }

  Map<String, dynamic> get toMap {
    final Map<String, dynamic> map = {"id": id};
    if (extraItemChance != null) {
      map.addEntries([MapEntry("extra_item_chance", extraItemChance)]);
    }
    return map;
  }
}

class IngredientConverter extends TypeConverter<List<Ingredient>, String> {
  const IngredientConverter();

  @override
  List<Ingredient> fromIsar(String object) {

    final List<dynamic> list1 = jsonDecode(object);
    final List<Ingredient> list2 = [];

    for (dynamic map in list1) {
      list2.add(Ingredient.fromMap(Map.from(map)));
    }
    return list2;
  }

  @override
  String toIsar(List<Ingredient> object) {
    final List<Map<String, dynamic>> list = [];
    for (Ingredient i in object) {
      list.add(i.toMap);
    }
    return jsonEncode(list);
  }
}