import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:nw_advanced/settings/settings.dart' as settings;

part 'user_data.g.dart';

@Collection()
class UserData {
  int id = Isar.autoIncrement;

  late int clientVersion;

  late bool useSsl;

  late String dataFileBaseUri;
  late String infoFileUri;
  late int serverTimeoutDuration;

  late String nwmpCacheUri;
  late String nwmpBaseUri;
  late String nwmpUpdateUri;
  late String nwmpItemListUri;
  late int nwmpTimeoutDuration;

  late int dataUpdateCheckDuration;
  late int priceUpdateCheckDuration;

  late double defaultStationTaxRate;
  late double defaultTradingTaxRate;
  late int defaultTerritoryRefiningBonus;

  late int defaultRefiningLevel;
  late int defaultCraftingLevel;
  late int defaultRefiningBonus;
  late int defaultCraftingMinGearScoreBonus;
  late int defaultCraftingMaxGearScoreBonus;

  int? currentPlayerId;
  int? currentVersion;
  @UpdateMapConverter()
  Map<String, int> lastUpdateCheck = {};
  @UpdateMapConverter()
  Map<String, int> lastUpdate = {};

  UserData();

  UserData.newEntity(
      this.clientVersion,
      {
        required this.useSsl,
        required this.dataFileBaseUri,
        required this.infoFileUri,
        required this.serverTimeoutDuration,
        required this.nwmpCacheUri,
        required this.nwmpBaseUri,
        required this.nwmpUpdateUri,
        required this.nwmpItemListUri,
        required this.nwmpTimeoutDuration,
        required this.dataUpdateCheckDuration,
        required this.priceUpdateCheckDuration,
        required this.defaultStationTaxRate,
        required this.defaultTradingTaxRate,
        required this.defaultTerritoryRefiningBonus,
        required this.defaultRefiningLevel,
        required this.defaultCraftingLevel,
        required this.defaultRefiningBonus,
        required this.defaultCraftingMinGearScoreBonus,
        required this.defaultCraftingMaxGearScoreBonus
      });

  UserData.initialized():
      this.newEntity(
          settings.clientVersion,
          useSsl: settings.useSsl,
          dataFileBaseUri: settings.dataFileBaseUri,
          infoFileUri: settings.infoFileUri,
          serverTimeoutDuration: settings.serverTimeoutDuration.inMilliseconds,
          nwmpCacheUri: settings.nwmpCacheUri,
          nwmpBaseUri: settings.nwmpBaseUri,
          nwmpUpdateUri: settings.nwmpUpdateUri,
          nwmpItemListUri: settings.nwmpItemListUri,
          nwmpTimeoutDuration: settings.nwmpTimeoutDuration.inMilliseconds,
          dataUpdateCheckDuration: settings.dataUpdateCheckDuration.inMilliseconds,
          priceUpdateCheckDuration: settings.priceUpdateCheckDuration.inMilliseconds,
          defaultStationTaxRate: settings.defaultStationTaxRate,
          defaultTradingTaxRate: settings.defaultTradingTaxRate,
          defaultTerritoryRefiningBonus: settings.defaultTerritoryRefiningBonus,
          defaultRefiningLevel: settings.defaultRefiningLevel,
          defaultCraftingLevel: settings.defaultCraftingLevel,
          defaultRefiningBonus: settings.defaultRefiningBonus,
          defaultCraftingMinGearScoreBonus: settings.defaultCraftingMinGearScoreBonus,
          defaultCraftingMaxGearScoreBonus: settings.defaultCraftingMaxGearScoreBonus
      );

  Map<String, dynamic> get toMap => {
    "client_version": clientVersion,
    "use_ssl": useSsl,
    "date_file_base_uri": dataFileBaseUri,
    "info_file_uri": infoFileUri,
    "nwmp_cache_uri": nwmpCacheUri,
    "nwmp_base_uri": nwmpBaseUri,
    "nwmp_timeout_duration": "${nwmpTimeoutDuration}ms",
    "data_upgrade_check_duration": "${dataUpdateCheckDuration}ms",
    "price_upgrade_check_duration": "${priceUpdateCheckDuration}ms",
    "current_player_id": currentPlayerId,
    "current_version": currentVersion,
    "last_update": lastUpdateCheck,
  };
}

class UpdateMapConverter extends TypeConverter<Map<String, int>, String> {
  const UpdateMapConverter();

  @override
  Map<String, int> fromIsar(String object) {
    return Map<String, int>.from(jsonDecode(object));
  }

  @override
  String toIsar(Map<String, int> object) {
    return jsonEncode(object);
  }

}