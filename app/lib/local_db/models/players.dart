import 'package:isar/isar.dart';
part 'players.g.dart';

@Collection()
class Player {
  int id = Isar.autoIncrement;

  late String name;
  String? server;
  double? stationTaxRate;
  double? tradingTaxRate;
  int? territoryRefiningBonus;

  int? leatherworking;
  int? leatherworkingRefiningBonus;

  int? smelting;
  int? smeltingRefiningBonus;

  int? stonecutting;
  int? stonecuttingRefiningBonus;

  int? weaving;
  int? weavingRefiningBonus;

  int? woodworking;
  int? woodworkingRefiningBonus;

  int? arcana;
  int? arcanaMinGearScoreBonus;
  int? arcanaMaxGearScoreBonus;

  int? armoring;
  int? armoringMinGearScoreBonus;
  int? armoringMaxGearScoreBonus;

  int? cooking;
  int? cookingBonus;

  int? engineering;
  int? engineeringMinGearScoreBonus;
  int? engineeringMaxGearScoreBonus;

  int? furnishing;

  int? jewelcrafting;
  int? jewelcraftingMinGearScoreBonus;
  int? jewelcraftingMaxGearScoreBonus;

  int? weaponsmithing;
  int? weaponsmithingMinGearScoreBonus;
  int? weaponsmithingMaxGearScoreBonus;
  Player();

  Player.newEntity(this.name);

  /// Clone but cloned object have the same id (DB treats them as the same player)
  Player clone() {
    return Player.newEntity(name)
        ..id = id
        ..server = server
        ..stationTaxRate = stationTaxRate
        ..tradingTaxRate = tradingTaxRate
        ..territoryRefiningBonus = territoryRefiningBonus
        ..leatherworking = leatherworking
        ..leatherworkingRefiningBonus = leatherworkingRefiningBonus
        ..smelting = smelting
        ..smeltingRefiningBonus = smeltingRefiningBonus
        ..stonecutting = stonecutting
        ..stonecuttingRefiningBonus = stonecuttingRefiningBonus
        ..weaving = weaving
        ..weavingRefiningBonus = weavingRefiningBonus
        ..woodworking = woodworking
        ..woodworkingRefiningBonus = woodworkingRefiningBonus
        ..arcana  = arcana
        ..arcanaMinGearScoreBonus = arcanaMinGearScoreBonus
        ..arcanaMaxGearScoreBonus = arcanaMaxGearScoreBonus
        ..armoring = armoring
        ..armoringMinGearScoreBonus = armoringMinGearScoreBonus
        ..armoringMaxGearScoreBonus = armoringMaxGearScoreBonus
        ..cooking = cooking
        ..cookingBonus = cookingBonus
        ..engineering = engineering
        ..engineeringMinGearScoreBonus = engineeringMinGearScoreBonus
        ..engineeringMaxGearScoreBonus = engineeringMaxGearScoreBonus
        ..furnishing = furnishing
        ..jewelcrafting = jewelcrafting
        ..jewelcraftingMinGearScoreBonus = jewelcraftingMinGearScoreBonus
        ..jewelcraftingMaxGearScoreBonus = jewelcraftingMaxGearScoreBonus
        ..weaponsmithing = weaponsmithing
        ..weaponsmithingMinGearScoreBonus = weaponsmithingMinGearScoreBonus
        .. weaponsmithingMaxGearScoreBonus = weaponsmithingMaxGearScoreBonus;
  }

  bool isUpdatedFrom(Player old) {
    return name != old.name
        || server != old.server
        || stationTaxRate != old.stationTaxRate
        || tradingTaxRate != old.tradingTaxRate
        || territoryRefiningBonus != old.territoryRefiningBonus
        || leatherworking != old.leatherworking
        || leatherworkingRefiningBonus != old.leatherworkingRefiningBonus
        || smelting != old.smelting
        || smeltingRefiningBonus != old.smeltingRefiningBonus
        || stonecutting != old.stonecutting
        || stonecuttingRefiningBonus != old.stonecuttingRefiningBonus
        || weaving != old.weaving
        || weavingRefiningBonus != old.weavingRefiningBonus
        || woodworking != old.woodworking
        || woodworkingRefiningBonus != old.woodworkingRefiningBonus
        || arcana != old.arcana
        || arcanaMinGearScoreBonus != old.arcanaMinGearScoreBonus
        || arcanaMaxGearScoreBonus != old.arcanaMaxGearScoreBonus
        || armoring != old.armoring
        || armoringMinGearScoreBonus != old.armoringMinGearScoreBonus
        || armoringMaxGearScoreBonus != old.armoringMaxGearScoreBonus
        || cooking != old.cooking
        || cookingBonus != old.cookingBonus
        || engineering != old.engineering
        || engineeringMinGearScoreBonus != old.engineeringMinGearScoreBonus
        || engineeringMaxGearScoreBonus != old.engineeringMaxGearScoreBonus
        || furnishing != old.furnishing
        || jewelcrafting != old.jewelcrafting
        || jewelcraftingMinGearScoreBonus != old.jewelcraftingMinGearScoreBonus
        || jewelcraftingMaxGearScoreBonus != old.jewelcraftingMaxGearScoreBonus
        || weaponsmithing != old.weaponsmithing
        || weaponsmithingMinGearScoreBonus != old.weaponsmithingMinGearScoreBonus
        || weaponsmithingMaxGearScoreBonus != old. weaponsmithingMaxGearScoreBonus;
  }

  @override
  String toString() {
    return 'Player{id: $id, name: $name, server: $server, stationTaxRate: $stationTaxRate, tradingTaxRate: $tradingTaxRate, territoryRefiningBonus: $territoryRefiningBonus, leatherworking: $leatherworking, leatherworkingRefiningBonus: $leatherworkingRefiningBonus, smelting: $smelting, smeltingRefiningBonus: $smeltingRefiningBonus, stonecutting: $stonecutting, stonecuttingRefiningBonus: $stonecuttingRefiningBonus, weaving: $weaving, weavingRefiningBonus: $weavingRefiningBonus, woodworking: $woodworking, woodworkingRefiningBonus: $woodworkingRefiningBonus, arcana: $arcana, arcanaMinGearScoreBonus: $arcanaMinGearScoreBonus, arcanaMaxGearScoreBonus: $arcanaMaxGearScoreBonus, armoring: $armoring, armoringMinGearScoreBonus: $armoringMinGearScoreBonus, armoringMaxGearScoreBonus: $armoringMaxGearScoreBonus, cooking: $cooking, cookingBonus: $cookingBonus, engineering: $engineering, engineeringMinGearScoreBonus: $engineeringMinGearScoreBonus, engineeringMaxGearScoreBonus: $engineeringMaxGearScoreBonus, furnishing: $furnishing, jewelcrafting: $jewelcrafting, jewelcraftingMinGearScoreBonus: $jewelcraftingMinGearScoreBonus, jewelcraftingMaxGearScoreBonus: $jewelcraftingMaxGearScoreBonus, weaponsmithing: $weaponsmithing, weaponsmithingMinGearScoreBonus: $weaponsmithingMinGearScoreBonus, weaponsmithingMaxGearScoreBonus: $weaponsmithingMaxGearScoreBonus}';
  }
}