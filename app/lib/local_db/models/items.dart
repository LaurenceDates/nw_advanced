import 'package:isar/isar.dart';
import 'package:nw_advanced/local_db/models/prices.dart';
part 'items.g.dart';

@Collection()
class Item {
  int id = Isar.autoIncrement;
  @Index(unique: true, type: IndexType.hash)
  late String itemId;
  late String itemName;
  @Index(type: IndexType.hash)
  String? definitionFile;
  int? tier;
  int? rarity;
  @Index(type: IndexType.hashElements)
  List<String>? types;

  @Backlink(to: 'item')
  final IsarLinks<Price> prices = IsarLinks<Price>();

  Item();

  Item.newEntity(this.itemId, this.itemName, this.definitionFile, this.tier, this.rarity, List<String>? types) {
    if (types != null && types.isNotEmpty) {
      this.types = <String>[];
      for (String t in types) {
        if (!this.types!.contains(t)) {
          this.types!.add(t);
        }
      }
    }
  }

  factory Item.fromMap(Map<String, dynamic> map, String definitionFIle) {
    List<String> ls = [];

    if (map["types"] != null) {
      for(String t in map["types"]) {
        ls.add(t);
      }
    }

    final Item entity = Item.newEntity(map["id"], map["name"], definitionFIle, map["tier"], map["reality"], null);
    if (ls.isNotEmpty) {
      entity.types = ls;
    }

    return entity;
  }

  Map<String, dynamic> get toMap => {
    "ItemId": itemId,
    "ItemName": itemName,
    "Definition File": definitionFile,
    "Tier": tier,
    "Reality": rarity,
    "Types": types
  };

  @override
  String toString() {
    return toMap.toString();
  }
}