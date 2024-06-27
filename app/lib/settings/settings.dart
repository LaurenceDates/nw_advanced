// Test Settings

const bool testMode = false;
const bool designMode = false;
const bool deleteLocalDataOnLaunch = false;
const String nwmpTestDataUri = "nwdata.dates.studio/test/nwmp.json";

// client version
const int clientVersion = 20231226;

//=============================================================
// The Following Values are Initial Values and can be Updated
// via Data Server Access
//=============================================================

// connection
const bool useSsl = true;

// uri
const String dataFileBaseUri = "nwdata.dates.studio/files";
const String infoFileUri = "nwdata.dates.studio/info.json";
const Duration serverTimeoutDuration = Duration(seconds: 20);

const String nwmpCacheUri = "nwtools.dates.studio/data/mpcache";
const String nwmpBaseUri = "nwmarketprices.com/api/latest-prices";
const String nwmpUpdateUri = "nwmarketprices.com/api/servers_updated/";
const String nwmpItemListUri = "nwmarketprices.com/api/confirmed_names/";
const Duration nwmpTimeoutDuration = Duration(seconds: 30);

// update duration
const Duration dataUpdateCheckDuration = Duration(hours: 6);
const Duration priceUpdateCheckDuration = Duration(minutes: 5); // minimum price check duration

// default player data
const double defaultStationTaxRate = 0.7;
const double defaultTradingTaxRate = 0.7;
const int defaultTerritoryRefiningBonus = 0;
const int defaultRefiningLevel = 250;
const int defaultCraftingLevel = 250;
const int defaultRefiningBonus = 10;
const int defaultCraftingMinGearScoreBonus = 25;
const int defaultCraftingMaxGearScoreBonus = 25;