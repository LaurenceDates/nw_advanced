// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetUserDataCollection on Isar {
  IsarCollection<UserData> get userDatas => getCollection();
}

const UserDataSchema = CollectionSchema(
  name: 'UserData',
  schema:
      '{"name":"UserData","idName":"id","properties":[{"name":"clientVersion","type":"Long"},{"name":"currentPlayerId","type":"Long"},{"name":"currentVersion","type":"Long"},{"name":"dataFileBaseUri","type":"String"},{"name":"dataUpdateCheckDuration","type":"Long"},{"name":"defaultCraftingLevel","type":"Long"},{"name":"defaultCraftingMaxGearScoreBonus","type":"Long"},{"name":"defaultCraftingMinGearScoreBonus","type":"Long"},{"name":"defaultRefiningBonus","type":"Long"},{"name":"defaultRefiningLevel","type":"Long"},{"name":"defaultStationTaxRate","type":"Double"},{"name":"defaultTerritoryRefiningBonus","type":"Long"},{"name":"defaultTradingTaxRate","type":"Double"},{"name":"infoFileUri","type":"String"},{"name":"lastUpdate","type":"String"},{"name":"lastUpdateCheck","type":"String"},{"name":"nwmpBaseUri","type":"String"},{"name":"nwmpCacheUri","type":"String"},{"name":"nwmpItemListUri","type":"String"},{"name":"nwmpTimeoutDuration","type":"Long"},{"name":"nwmpUpdateUri","type":"String"},{"name":"priceUpdateCheckDuration","type":"Long"},{"name":"serverTimeoutDuration","type":"Long"},{"name":"useSsl","type":"Bool"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'clientVersion': 0,
    'currentPlayerId': 1,
    'currentVersion': 2,
    'dataFileBaseUri': 3,
    'dataUpdateCheckDuration': 4,
    'defaultCraftingLevel': 5,
    'defaultCraftingMaxGearScoreBonus': 6,
    'defaultCraftingMinGearScoreBonus': 7,
    'defaultRefiningBonus': 8,
    'defaultRefiningLevel': 9,
    'defaultStationTaxRate': 10,
    'defaultTerritoryRefiningBonus': 11,
    'defaultTradingTaxRate': 12,
    'infoFileUri': 13,
    'lastUpdate': 14,
    'lastUpdateCheck': 15,
    'nwmpBaseUri': 16,
    'nwmpCacheUri': 17,
    'nwmpItemListUri': 18,
    'nwmpTimeoutDuration': 19,
    'nwmpUpdateUri': 20,
    'priceUpdateCheckDuration': 21,
    'serverTimeoutDuration': 22,
    'useSsl': 23
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _userDataGetId,
  setId: _userDataSetId,
  getLinks: _userDataGetLinks,
  attachLinks: _userDataAttachLinks,
  serializeNative: _userDataSerializeNative,
  deserializeNative: _userDataDeserializeNative,
  deserializePropNative: _userDataDeserializePropNative,
  serializeWeb: _userDataSerializeWeb,
  deserializeWeb: _userDataDeserializeWeb,
  deserializePropWeb: _userDataDeserializePropWeb,
  version: 3,
);

int? _userDataGetId(UserData object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _userDataSetId(UserData object, int id) {
  object.id = id;
}

List<IsarLinkBase> _userDataGetLinks(UserData object) {
  return [];
}

const _userDataUpdateMapConverter = UpdateMapConverter();

void _userDataSerializeNative(
    IsarCollection<UserData> collection,
    IsarRawObject rawObj,
    UserData object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.clientVersion;
  final _clientVersion = value0;
  final value1 = object.currentPlayerId;
  final _currentPlayerId = value1;
  final value2 = object.currentVersion;
  final _currentVersion = value2;
  final value3 = object.dataFileBaseUri;
  final _dataFileBaseUri = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_dataFileBaseUri.length) as int;
  final value4 = object.dataUpdateCheckDuration;
  final _dataUpdateCheckDuration = value4;
  final value5 = object.defaultCraftingLevel;
  final _defaultCraftingLevel = value5;
  final value6 = object.defaultCraftingMaxGearScoreBonus;
  final _defaultCraftingMaxGearScoreBonus = value6;
  final value7 = object.defaultCraftingMinGearScoreBonus;
  final _defaultCraftingMinGearScoreBonus = value7;
  final value8 = object.defaultRefiningBonus;
  final _defaultRefiningBonus = value8;
  final value9 = object.defaultRefiningLevel;
  final _defaultRefiningLevel = value9;
  final value10 = object.defaultStationTaxRate;
  final _defaultStationTaxRate = value10;
  final value11 = object.defaultTerritoryRefiningBonus;
  final _defaultTerritoryRefiningBonus = value11;
  final value12 = object.defaultTradingTaxRate;
  final _defaultTradingTaxRate = value12;
  final value13 = object.infoFileUri;
  final _infoFileUri = IsarBinaryWriter.utf8Encoder.convert(value13);
  dynamicSize += (_infoFileUri.length) as int;
  final value14 = _userDataUpdateMapConverter.toIsar(object.lastUpdate);
  final _lastUpdate = IsarBinaryWriter.utf8Encoder.convert(value14);
  dynamicSize += (_lastUpdate.length) as int;
  final value15 = _userDataUpdateMapConverter.toIsar(object.lastUpdateCheck);
  final _lastUpdateCheck = IsarBinaryWriter.utf8Encoder.convert(value15);
  dynamicSize += (_lastUpdateCheck.length) as int;
  final value16 = object.nwmpBaseUri;
  final _nwmpBaseUri = IsarBinaryWriter.utf8Encoder.convert(value16);
  dynamicSize += (_nwmpBaseUri.length) as int;
  final value17 = object.nwmpCacheUri;
  final _nwmpCacheUri = IsarBinaryWriter.utf8Encoder.convert(value17);
  dynamicSize += (_nwmpCacheUri.length) as int;
  final value18 = object.nwmpItemListUri;
  final _nwmpItemListUri = IsarBinaryWriter.utf8Encoder.convert(value18);
  dynamicSize += (_nwmpItemListUri.length) as int;
  final value19 = object.nwmpTimeoutDuration;
  final _nwmpTimeoutDuration = value19;
  final value20 = object.nwmpUpdateUri;
  final _nwmpUpdateUri = IsarBinaryWriter.utf8Encoder.convert(value20);
  dynamicSize += (_nwmpUpdateUri.length) as int;
  final value21 = object.priceUpdateCheckDuration;
  final _priceUpdateCheckDuration = value21;
  final value22 = object.serverTimeoutDuration;
  final _serverTimeoutDuration = value22;
  final value23 = object.useSsl;
  final _useSsl = value23;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _clientVersion);
  writer.writeLong(offsets[1], _currentPlayerId);
  writer.writeLong(offsets[2], _currentVersion);
  writer.writeBytes(offsets[3], _dataFileBaseUri);
  writer.writeLong(offsets[4], _dataUpdateCheckDuration);
  writer.writeLong(offsets[5], _defaultCraftingLevel);
  writer.writeLong(offsets[6], _defaultCraftingMaxGearScoreBonus);
  writer.writeLong(offsets[7], _defaultCraftingMinGearScoreBonus);
  writer.writeLong(offsets[8], _defaultRefiningBonus);
  writer.writeLong(offsets[9], _defaultRefiningLevel);
  writer.writeDouble(offsets[10], _defaultStationTaxRate);
  writer.writeLong(offsets[11], _defaultTerritoryRefiningBonus);
  writer.writeDouble(offsets[12], _defaultTradingTaxRate);
  writer.writeBytes(offsets[13], _infoFileUri);
  writer.writeBytes(offsets[14], _lastUpdate);
  writer.writeBytes(offsets[15], _lastUpdateCheck);
  writer.writeBytes(offsets[16], _nwmpBaseUri);
  writer.writeBytes(offsets[17], _nwmpCacheUri);
  writer.writeBytes(offsets[18], _nwmpItemListUri);
  writer.writeLong(offsets[19], _nwmpTimeoutDuration);
  writer.writeBytes(offsets[20], _nwmpUpdateUri);
  writer.writeLong(offsets[21], _priceUpdateCheckDuration);
  writer.writeLong(offsets[22], _serverTimeoutDuration);
  writer.writeBool(offsets[23], _useSsl);
}

UserData _userDataDeserializeNative(IsarCollection<UserData> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = UserData();
  object.clientVersion = reader.readLong(offsets[0]);
  object.currentPlayerId = reader.readLongOrNull(offsets[1]);
  object.currentVersion = reader.readLongOrNull(offsets[2]);
  object.dataFileBaseUri = reader.readString(offsets[3]);
  object.dataUpdateCheckDuration = reader.readLong(offsets[4]);
  object.defaultCraftingLevel = reader.readLong(offsets[5]);
  object.defaultCraftingMaxGearScoreBonus = reader.readLong(offsets[6]);
  object.defaultCraftingMinGearScoreBonus = reader.readLong(offsets[7]);
  object.defaultRefiningBonus = reader.readLong(offsets[8]);
  object.defaultRefiningLevel = reader.readLong(offsets[9]);
  object.defaultStationTaxRate = reader.readDouble(offsets[10]);
  object.defaultTerritoryRefiningBonus = reader.readLong(offsets[11]);
  object.defaultTradingTaxRate = reader.readDouble(offsets[12]);
  object.id = id;
  object.infoFileUri = reader.readString(offsets[13]);
  object.lastUpdate =
      _userDataUpdateMapConverter.fromIsar(reader.readString(offsets[14]));
  object.lastUpdateCheck =
      _userDataUpdateMapConverter.fromIsar(reader.readString(offsets[15]));
  object.nwmpBaseUri = reader.readString(offsets[16]);
  object.nwmpCacheUri = reader.readString(offsets[17]);
  object.nwmpItemListUri = reader.readString(offsets[18]);
  object.nwmpTimeoutDuration = reader.readLong(offsets[19]);
  object.nwmpUpdateUri = reader.readString(offsets[20]);
  object.priceUpdateCheckDuration = reader.readLong(offsets[21]);
  object.serverTimeoutDuration = reader.readLong(offsets[22]);
  object.useSsl = reader.readBool(offsets[23]);
  return object;
}

P _userDataDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (_userDataUpdateMapConverter.fromIsar(reader.readString(offset)))
          as P;
    case 15:
      return (_userDataUpdateMapConverter.fromIsar(reader.readString(offset)))
          as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readLong(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    case 22:
      return (reader.readLong(offset)) as P;
    case 23:
      return (reader.readBool(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _userDataSerializeWeb(
    IsarCollection<UserData> collection, UserData object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'clientVersion', object.clientVersion);
  IsarNative.jsObjectSet(jsObj, 'currentPlayerId', object.currentPlayerId);
  IsarNative.jsObjectSet(jsObj, 'currentVersion', object.currentVersion);
  IsarNative.jsObjectSet(jsObj, 'dataFileBaseUri', object.dataFileBaseUri);
  IsarNative.jsObjectSet(
      jsObj, 'dataUpdateCheckDuration', object.dataUpdateCheckDuration);
  IsarNative.jsObjectSet(
      jsObj, 'defaultCraftingLevel', object.defaultCraftingLevel);
  IsarNative.jsObjectSet(jsObj, 'defaultCraftingMaxGearScoreBonus',
      object.defaultCraftingMaxGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'defaultCraftingMinGearScoreBonus',
      object.defaultCraftingMinGearScoreBonus);
  IsarNative.jsObjectSet(
      jsObj, 'defaultRefiningBonus', object.defaultRefiningBonus);
  IsarNative.jsObjectSet(
      jsObj, 'defaultRefiningLevel', object.defaultRefiningLevel);
  IsarNative.jsObjectSet(
      jsObj, 'defaultStationTaxRate', object.defaultStationTaxRate);
  IsarNative.jsObjectSet(jsObj, 'defaultTerritoryRefiningBonus',
      object.defaultTerritoryRefiningBonus);
  IsarNative.jsObjectSet(
      jsObj, 'defaultTradingTaxRate', object.defaultTradingTaxRate);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'infoFileUri', object.infoFileUri);
  IsarNative.jsObjectSet(jsObj, 'lastUpdate',
      _userDataUpdateMapConverter.toIsar(object.lastUpdate));
  IsarNative.jsObjectSet(jsObj, 'lastUpdateCheck',
      _userDataUpdateMapConverter.toIsar(object.lastUpdateCheck));
  IsarNative.jsObjectSet(jsObj, 'nwmpBaseUri', object.nwmpBaseUri);
  IsarNative.jsObjectSet(jsObj, 'nwmpCacheUri', object.nwmpCacheUri);
  IsarNative.jsObjectSet(jsObj, 'nwmpItemListUri', object.nwmpItemListUri);
  IsarNative.jsObjectSet(
      jsObj, 'nwmpTimeoutDuration', object.nwmpTimeoutDuration);
  IsarNative.jsObjectSet(jsObj, 'nwmpUpdateUri', object.nwmpUpdateUri);
  IsarNative.jsObjectSet(
      jsObj, 'priceUpdateCheckDuration', object.priceUpdateCheckDuration);
  IsarNative.jsObjectSet(
      jsObj, 'serverTimeoutDuration', object.serverTimeoutDuration);
  IsarNative.jsObjectSet(jsObj, 'useSsl', object.useSsl);
  return jsObj;
}

UserData _userDataDeserializeWeb(
    IsarCollection<UserData> collection, dynamic jsObj) {
  final object = UserData();
  object.clientVersion =
      IsarNative.jsObjectGet(jsObj, 'clientVersion') ?? double.negativeInfinity;
  object.currentPlayerId = IsarNative.jsObjectGet(jsObj, 'currentPlayerId');
  object.currentVersion = IsarNative.jsObjectGet(jsObj, 'currentVersion');
  object.dataFileBaseUri =
      IsarNative.jsObjectGet(jsObj, 'dataFileBaseUri') ?? '';
  object.dataUpdateCheckDuration =
      IsarNative.jsObjectGet(jsObj, 'dataUpdateCheckDuration') ??
          double.negativeInfinity;
  object.defaultCraftingLevel =
      IsarNative.jsObjectGet(jsObj, 'defaultCraftingLevel') ??
          double.negativeInfinity;
  object.defaultCraftingMaxGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'defaultCraftingMaxGearScoreBonus') ??
          double.negativeInfinity;
  object.defaultCraftingMinGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'defaultCraftingMinGearScoreBonus') ??
          double.negativeInfinity;
  object.defaultRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'defaultRefiningBonus') ??
          double.negativeInfinity;
  object.defaultRefiningLevel =
      IsarNative.jsObjectGet(jsObj, 'defaultRefiningLevel') ??
          double.negativeInfinity;
  object.defaultStationTaxRate =
      IsarNative.jsObjectGet(jsObj, 'defaultStationTaxRate') ??
          double.negativeInfinity;
  object.defaultTerritoryRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'defaultTerritoryRefiningBonus') ??
          double.negativeInfinity;
  object.defaultTradingTaxRate =
      IsarNative.jsObjectGet(jsObj, 'defaultTradingTaxRate') ??
          double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.infoFileUri = IsarNative.jsObjectGet(jsObj, 'infoFileUri') ?? '';
  object.lastUpdate = _userDataUpdateMapConverter
      .fromIsar(IsarNative.jsObjectGet(jsObj, 'lastUpdate') ?? '');
  object.lastUpdateCheck = _userDataUpdateMapConverter
      .fromIsar(IsarNative.jsObjectGet(jsObj, 'lastUpdateCheck') ?? '');
  object.nwmpBaseUri = IsarNative.jsObjectGet(jsObj, 'nwmpBaseUri') ?? '';
  object.nwmpCacheUri = IsarNative.jsObjectGet(jsObj, 'nwmpCacheUri') ?? '';
  object.nwmpItemListUri =
      IsarNative.jsObjectGet(jsObj, 'nwmpItemListUri') ?? '';
  object.nwmpTimeoutDuration =
      IsarNative.jsObjectGet(jsObj, 'nwmpTimeoutDuration') ??
          double.negativeInfinity;
  object.nwmpUpdateUri = IsarNative.jsObjectGet(jsObj, 'nwmpUpdateUri') ?? '';
  object.priceUpdateCheckDuration =
      IsarNative.jsObjectGet(jsObj, 'priceUpdateCheckDuration') ??
          double.negativeInfinity;
  object.serverTimeoutDuration =
      IsarNative.jsObjectGet(jsObj, 'serverTimeoutDuration') ??
          double.negativeInfinity;
  object.useSsl = IsarNative.jsObjectGet(jsObj, 'useSsl') ?? false;
  return object;
}

P _userDataDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'clientVersion':
      return (IsarNative.jsObjectGet(jsObj, 'clientVersion') ??
          double.negativeInfinity) as P;
    case 'currentPlayerId':
      return (IsarNative.jsObjectGet(jsObj, 'currentPlayerId')) as P;
    case 'currentVersion':
      return (IsarNative.jsObjectGet(jsObj, 'currentVersion')) as P;
    case 'dataFileBaseUri':
      return (IsarNative.jsObjectGet(jsObj, 'dataFileBaseUri') ?? '') as P;
    case 'dataUpdateCheckDuration':
      return (IsarNative.jsObjectGet(jsObj, 'dataUpdateCheckDuration') ??
          double.negativeInfinity) as P;
    case 'defaultCraftingLevel':
      return (IsarNative.jsObjectGet(jsObj, 'defaultCraftingLevel') ??
          double.negativeInfinity) as P;
    case 'defaultCraftingMaxGearScoreBonus':
      return (IsarNative.jsObjectGet(
              jsObj, 'defaultCraftingMaxGearScoreBonus') ??
          double.negativeInfinity) as P;
    case 'defaultCraftingMinGearScoreBonus':
      return (IsarNative.jsObjectGet(
              jsObj, 'defaultCraftingMinGearScoreBonus') ??
          double.negativeInfinity) as P;
    case 'defaultRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'defaultRefiningBonus') ??
          double.negativeInfinity) as P;
    case 'defaultRefiningLevel':
      return (IsarNative.jsObjectGet(jsObj, 'defaultRefiningLevel') ??
          double.negativeInfinity) as P;
    case 'defaultStationTaxRate':
      return (IsarNative.jsObjectGet(jsObj, 'defaultStationTaxRate') ??
          double.negativeInfinity) as P;
    case 'defaultTerritoryRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'defaultTerritoryRefiningBonus') ??
          double.negativeInfinity) as P;
    case 'defaultTradingTaxRate':
      return (IsarNative.jsObjectGet(jsObj, 'defaultTradingTaxRate') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'infoFileUri':
      return (IsarNative.jsObjectGet(jsObj, 'infoFileUri') ?? '') as P;
    case 'lastUpdate':
      return (_userDataUpdateMapConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'lastUpdate') ?? '')) as P;
    case 'lastUpdateCheck':
      return (_userDataUpdateMapConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'lastUpdateCheck') ?? '')) as P;
    case 'nwmpBaseUri':
      return (IsarNative.jsObjectGet(jsObj, 'nwmpBaseUri') ?? '') as P;
    case 'nwmpCacheUri':
      return (IsarNative.jsObjectGet(jsObj, 'nwmpCacheUri') ?? '') as P;
    case 'nwmpItemListUri':
      return (IsarNative.jsObjectGet(jsObj, 'nwmpItemListUri') ?? '') as P;
    case 'nwmpTimeoutDuration':
      return (IsarNative.jsObjectGet(jsObj, 'nwmpTimeoutDuration') ??
          double.negativeInfinity) as P;
    case 'nwmpUpdateUri':
      return (IsarNative.jsObjectGet(jsObj, 'nwmpUpdateUri') ?? '') as P;
    case 'priceUpdateCheckDuration':
      return (IsarNative.jsObjectGet(jsObj, 'priceUpdateCheckDuration') ??
          double.negativeInfinity) as P;
    case 'serverTimeoutDuration':
      return (IsarNative.jsObjectGet(jsObj, 'serverTimeoutDuration') ??
          double.negativeInfinity) as P;
    case 'useSsl':
      return (IsarNative.jsObjectGet(jsObj, 'useSsl') ?? false) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _userDataAttachLinks(IsarCollection col, int id, UserData object) {}

extension UserDataQueryWhereSort on QueryBuilder<UserData, UserData, QWhere> {
  QueryBuilder<UserData, UserData, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension UserDataQueryWhere on QueryBuilder<UserData, UserData, QWhereClause> {
  QueryBuilder<UserData, UserData, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<UserData, UserData, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<UserData, UserData, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<UserData, UserData, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension UserDataQueryFilter
    on QueryBuilder<UserData, UserData, QFilterCondition> {
  QueryBuilder<UserData, UserData, QAfterFilterCondition> clientVersionEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'clientVersion',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      clientVersionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'clientVersion',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> clientVersionLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'clientVersion',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> clientVersionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'clientVersion',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentPlayerIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'currentPlayerId',
      value: null,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentPlayerIdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentPlayerId',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentPlayerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentPlayerId',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentPlayerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentPlayerId',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentPlayerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentPlayerId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentVersionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'currentVersion',
      value: null,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> currentVersionEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentVersion',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentVersionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentVersion',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      currentVersionLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentVersion',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> currentVersionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentVersion',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dataFileBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'dataFileBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'dataFileBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dataFileBaseUri',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'dataFileBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'dataFileBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'dataFileBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataFileBaseUriMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'dataFileBaseUri',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataUpdateCheckDurationEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dataUpdateCheckDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataUpdateCheckDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'dataUpdateCheckDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataUpdateCheckDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'dataUpdateCheckDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      dataUpdateCheckDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dataUpdateCheckDuration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingLevelEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultCraftingLevel',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultCraftingLevel',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultCraftingLevel',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultCraftingLevel',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMaxGearScoreBonusEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultCraftingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMaxGearScoreBonusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultCraftingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMaxGearScoreBonusLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultCraftingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMaxGearScoreBonusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultCraftingMaxGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMinGearScoreBonusEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultCraftingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMinGearScoreBonusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultCraftingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMinGearScoreBonusLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultCraftingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultCraftingMinGearScoreBonusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultCraftingMinGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningBonusEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningBonusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningBonusLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningBonusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningLevelEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultRefiningLevel',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultRefiningLevel',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultRefiningLevel',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultRefiningLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultRefiningLevel',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultStationTaxRateGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'defaultStationTaxRate',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultStationTaxRateLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'defaultStationTaxRate',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultStationTaxRateBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultStationTaxRate',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTerritoryRefiningBonusEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultTerritoryRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTerritoryRefiningBonusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultTerritoryRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTerritoryRefiningBonusLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultTerritoryRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTerritoryRefiningBonusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultTerritoryRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTradingTaxRateGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'defaultTradingTaxRate',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTradingTaxRateLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'defaultTradingTaxRate',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      defaultTradingTaxRateBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultTradingTaxRate',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'infoFileUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      infoFileUriGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'infoFileUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'infoFileUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'infoFileUri',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'infoFileUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'infoFileUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'infoFileUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> infoFileUriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'infoFileUri',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateEqualTo(
    Map<String, int> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastUpdate',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateGreaterThan(
    Map<String, int> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastUpdate',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateLessThan(
    Map<String, int> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastUpdate',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateBetween(
    Map<String, int> lower,
    Map<String, int> upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastUpdate',
      lower: _userDataUpdateMapConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _userDataUpdateMapConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateStartsWith(
    Map<String, int> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastUpdate',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateEndsWith(
    Map<String, int> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastUpdate',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateContains(
      Map<String, int> value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastUpdate',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> lastUpdateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastUpdate',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckEqualTo(
    Map<String, int> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastUpdateCheck',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckGreaterThan(
    Map<String, int> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastUpdateCheck',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckLessThan(
    Map<String, int> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastUpdateCheck',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckBetween(
    Map<String, int> lower,
    Map<String, int> upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastUpdateCheck',
      lower: _userDataUpdateMapConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _userDataUpdateMapConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckStartsWith(
    Map<String, int> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastUpdateCheck',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckEndsWith(
    Map<String, int> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastUpdateCheck',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckContains(Map<String, int> value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastUpdateCheck',
      value: _userDataUpdateMapConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      lastUpdateCheckMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastUpdateCheck',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nwmpBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpBaseUriGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nwmpBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nwmpBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nwmpBaseUri',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'nwmpBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'nwmpBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'nwmpBaseUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpBaseUriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'nwmpBaseUri',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpCacheUriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nwmpCacheUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpCacheUriGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nwmpCacheUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpCacheUriLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nwmpCacheUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpCacheUriBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nwmpCacheUri',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpCacheUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'nwmpCacheUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpCacheUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'nwmpCacheUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpCacheUriContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'nwmpCacheUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpCacheUriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'nwmpCacheUri',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nwmpItemListUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nwmpItemListUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nwmpItemListUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nwmpItemListUri',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'nwmpItemListUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'nwmpItemListUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'nwmpItemListUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpItemListUriMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'nwmpItemListUri',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpTimeoutDurationEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nwmpTimeoutDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpTimeoutDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nwmpTimeoutDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpTimeoutDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nwmpTimeoutDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpTimeoutDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nwmpTimeoutDuration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpUpdateUriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nwmpUpdateUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpUpdateUriGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nwmpUpdateUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpUpdateUriLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nwmpUpdateUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpUpdateUriBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nwmpUpdateUri',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      nwmpUpdateUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'nwmpUpdateUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpUpdateUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'nwmpUpdateUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpUpdateUriContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'nwmpUpdateUri',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> nwmpUpdateUriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'nwmpUpdateUri',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      priceUpdateCheckDurationEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priceUpdateCheckDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      priceUpdateCheckDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'priceUpdateCheckDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      priceUpdateCheckDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'priceUpdateCheckDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      priceUpdateCheckDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceUpdateCheckDuration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      serverTimeoutDurationEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'serverTimeoutDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      serverTimeoutDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'serverTimeoutDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      serverTimeoutDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'serverTimeoutDuration',
      value: value,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition>
      serverTimeoutDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'serverTimeoutDuration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserData, UserData, QAfterFilterCondition> useSslEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'useSsl',
      value: value,
    ));
  }
}

extension UserDataQueryLinks
    on QueryBuilder<UserData, UserData, QFilterCondition> {}

extension UserDataQueryWhereSortBy
    on QueryBuilder<UserData, UserData, QSortBy> {
  QueryBuilder<UserData, UserData, QAfterSortBy> sortByClientVersion() {
    return addSortByInternal('clientVersion', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByClientVersionDesc() {
    return addSortByInternal('clientVersion', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByCurrentPlayerId() {
    return addSortByInternal('currentPlayerId', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByCurrentPlayerIdDesc() {
    return addSortByInternal('currentPlayerId', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByCurrentVersion() {
    return addSortByInternal('currentVersion', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByCurrentVersionDesc() {
    return addSortByInternal('currentVersion', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDataFileBaseUri() {
    return addSortByInternal('dataFileBaseUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDataFileBaseUriDesc() {
    return addSortByInternal('dataFileBaseUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDataUpdateCheckDuration() {
    return addSortByInternal('dataUpdateCheckDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDataUpdateCheckDurationDesc() {
    return addSortByInternal('dataUpdateCheckDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDefaultCraftingLevel() {
    return addSortByInternal('defaultCraftingLevel', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultCraftingLevelDesc() {
    return addSortByInternal('defaultCraftingLevel', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultCraftingMaxGearScoreBonus() {
    return addSortByInternal('defaultCraftingMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultCraftingMaxGearScoreBonusDesc() {
    return addSortByInternal('defaultCraftingMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultCraftingMinGearScoreBonus() {
    return addSortByInternal('defaultCraftingMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultCraftingMinGearScoreBonusDesc() {
    return addSortByInternal('defaultCraftingMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDefaultRefiningBonus() {
    return addSortByInternal('defaultRefiningBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultRefiningBonusDesc() {
    return addSortByInternal('defaultRefiningBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDefaultRefiningLevel() {
    return addSortByInternal('defaultRefiningLevel', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultRefiningLevelDesc() {
    return addSortByInternal('defaultRefiningLevel', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDefaultStationTaxRate() {
    return addSortByInternal('defaultStationTaxRate', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultStationTaxRateDesc() {
    return addSortByInternal('defaultStationTaxRate', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultTerritoryRefiningBonus() {
    return addSortByInternal('defaultTerritoryRefiningBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultTerritoryRefiningBonusDesc() {
    return addSortByInternal('defaultTerritoryRefiningBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByDefaultTradingTaxRate() {
    return addSortByInternal('defaultTradingTaxRate', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByDefaultTradingTaxRateDesc() {
    return addSortByInternal('defaultTradingTaxRate', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByInfoFileUri() {
    return addSortByInternal('infoFileUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByInfoFileUriDesc() {
    return addSortByInternal('infoFileUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByLastUpdate() {
    return addSortByInternal('lastUpdate', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByLastUpdateDesc() {
    return addSortByInternal('lastUpdate', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByLastUpdateCheck() {
    return addSortByInternal('lastUpdateCheck', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByLastUpdateCheckDesc() {
    return addSortByInternal('lastUpdateCheck', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpBaseUri() {
    return addSortByInternal('nwmpBaseUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpBaseUriDesc() {
    return addSortByInternal('nwmpBaseUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpCacheUri() {
    return addSortByInternal('nwmpCacheUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpCacheUriDesc() {
    return addSortByInternal('nwmpCacheUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpItemListUri() {
    return addSortByInternal('nwmpItemListUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpItemListUriDesc() {
    return addSortByInternal('nwmpItemListUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpTimeoutDuration() {
    return addSortByInternal('nwmpTimeoutDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByNwmpTimeoutDurationDesc() {
    return addSortByInternal('nwmpTimeoutDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpUpdateUri() {
    return addSortByInternal('nwmpUpdateUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByNwmpUpdateUriDesc() {
    return addSortByInternal('nwmpUpdateUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByPriceUpdateCheckDuration() {
    return addSortByInternal('priceUpdateCheckDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByPriceUpdateCheckDurationDesc() {
    return addSortByInternal('priceUpdateCheckDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByServerTimeoutDuration() {
    return addSortByInternal('serverTimeoutDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      sortByServerTimeoutDurationDesc() {
    return addSortByInternal('serverTimeoutDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByUseSsl() {
    return addSortByInternal('useSsl', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> sortByUseSslDesc() {
    return addSortByInternal('useSsl', Sort.desc);
  }
}

extension UserDataQueryWhereSortThenBy
    on QueryBuilder<UserData, UserData, QSortThenBy> {
  QueryBuilder<UserData, UserData, QAfterSortBy> thenByClientVersion() {
    return addSortByInternal('clientVersion', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByClientVersionDesc() {
    return addSortByInternal('clientVersion', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByCurrentPlayerId() {
    return addSortByInternal('currentPlayerId', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByCurrentPlayerIdDesc() {
    return addSortByInternal('currentPlayerId', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByCurrentVersion() {
    return addSortByInternal('currentVersion', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByCurrentVersionDesc() {
    return addSortByInternal('currentVersion', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDataFileBaseUri() {
    return addSortByInternal('dataFileBaseUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDataFileBaseUriDesc() {
    return addSortByInternal('dataFileBaseUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDataUpdateCheckDuration() {
    return addSortByInternal('dataUpdateCheckDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDataUpdateCheckDurationDesc() {
    return addSortByInternal('dataUpdateCheckDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDefaultCraftingLevel() {
    return addSortByInternal('defaultCraftingLevel', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultCraftingLevelDesc() {
    return addSortByInternal('defaultCraftingLevel', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultCraftingMaxGearScoreBonus() {
    return addSortByInternal('defaultCraftingMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultCraftingMaxGearScoreBonusDesc() {
    return addSortByInternal('defaultCraftingMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultCraftingMinGearScoreBonus() {
    return addSortByInternal('defaultCraftingMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultCraftingMinGearScoreBonusDesc() {
    return addSortByInternal('defaultCraftingMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDefaultRefiningBonus() {
    return addSortByInternal('defaultRefiningBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultRefiningBonusDesc() {
    return addSortByInternal('defaultRefiningBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDefaultRefiningLevel() {
    return addSortByInternal('defaultRefiningLevel', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultRefiningLevelDesc() {
    return addSortByInternal('defaultRefiningLevel', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDefaultStationTaxRate() {
    return addSortByInternal('defaultStationTaxRate', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultStationTaxRateDesc() {
    return addSortByInternal('defaultStationTaxRate', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultTerritoryRefiningBonus() {
    return addSortByInternal('defaultTerritoryRefiningBonus', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultTerritoryRefiningBonusDesc() {
    return addSortByInternal('defaultTerritoryRefiningBonus', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByDefaultTradingTaxRate() {
    return addSortByInternal('defaultTradingTaxRate', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByDefaultTradingTaxRateDesc() {
    return addSortByInternal('defaultTradingTaxRate', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByInfoFileUri() {
    return addSortByInternal('infoFileUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByInfoFileUriDesc() {
    return addSortByInternal('infoFileUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByLastUpdate() {
    return addSortByInternal('lastUpdate', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByLastUpdateDesc() {
    return addSortByInternal('lastUpdate', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByLastUpdateCheck() {
    return addSortByInternal('lastUpdateCheck', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByLastUpdateCheckDesc() {
    return addSortByInternal('lastUpdateCheck', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpBaseUri() {
    return addSortByInternal('nwmpBaseUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpBaseUriDesc() {
    return addSortByInternal('nwmpBaseUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpCacheUri() {
    return addSortByInternal('nwmpCacheUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpCacheUriDesc() {
    return addSortByInternal('nwmpCacheUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpItemListUri() {
    return addSortByInternal('nwmpItemListUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpItemListUriDesc() {
    return addSortByInternal('nwmpItemListUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpTimeoutDuration() {
    return addSortByInternal('nwmpTimeoutDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByNwmpTimeoutDurationDesc() {
    return addSortByInternal('nwmpTimeoutDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpUpdateUri() {
    return addSortByInternal('nwmpUpdateUri', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByNwmpUpdateUriDesc() {
    return addSortByInternal('nwmpUpdateUri', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByPriceUpdateCheckDuration() {
    return addSortByInternal('priceUpdateCheckDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByPriceUpdateCheckDurationDesc() {
    return addSortByInternal('priceUpdateCheckDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByServerTimeoutDuration() {
    return addSortByInternal('serverTimeoutDuration', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy>
      thenByServerTimeoutDurationDesc() {
    return addSortByInternal('serverTimeoutDuration', Sort.desc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByUseSsl() {
    return addSortByInternal('useSsl', Sort.asc);
  }

  QueryBuilder<UserData, UserData, QAfterSortBy> thenByUseSslDesc() {
    return addSortByInternal('useSsl', Sort.desc);
  }
}

extension UserDataQueryWhereDistinct
    on QueryBuilder<UserData, UserData, QDistinct> {
  QueryBuilder<UserData, UserData, QDistinct> distinctByClientVersion() {
    return addDistinctByInternal('clientVersion');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByCurrentPlayerId() {
    return addDistinctByInternal('currentPlayerId');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByCurrentVersion() {
    return addDistinctByInternal('currentVersion');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByDataFileBaseUri(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('dataFileBaseUri',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByDataUpdateCheckDuration() {
    return addDistinctByInternal('dataUpdateCheckDuration');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByDefaultCraftingLevel() {
    return addDistinctByInternal('defaultCraftingLevel');
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByDefaultCraftingMaxGearScoreBonus() {
    return addDistinctByInternal('defaultCraftingMaxGearScoreBonus');
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByDefaultCraftingMinGearScoreBonus() {
    return addDistinctByInternal('defaultCraftingMinGearScoreBonus');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByDefaultRefiningBonus() {
    return addDistinctByInternal('defaultRefiningBonus');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByDefaultRefiningLevel() {
    return addDistinctByInternal('defaultRefiningLevel');
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByDefaultStationTaxRate() {
    return addDistinctByInternal('defaultStationTaxRate');
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByDefaultTerritoryRefiningBonus() {
    return addDistinctByInternal('defaultTerritoryRefiningBonus');
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByDefaultTradingTaxRate() {
    return addDistinctByInternal('defaultTradingTaxRate');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByInfoFileUri(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('infoFileUri', caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByLastUpdate(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastUpdate', caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByLastUpdateCheck(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastUpdateCheck',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByNwmpBaseUri(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('nwmpBaseUri', caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByNwmpCacheUri(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('nwmpCacheUri', caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByNwmpItemListUri(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('nwmpItemListUri',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByNwmpTimeoutDuration() {
    return addDistinctByInternal('nwmpTimeoutDuration');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByNwmpUpdateUri(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('nwmpUpdateUri', caseSensitive: caseSensitive);
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByPriceUpdateCheckDuration() {
    return addDistinctByInternal('priceUpdateCheckDuration');
  }

  QueryBuilder<UserData, UserData, QDistinct>
      distinctByServerTimeoutDuration() {
    return addDistinctByInternal('serverTimeoutDuration');
  }

  QueryBuilder<UserData, UserData, QDistinct> distinctByUseSsl() {
    return addDistinctByInternal('useSsl');
  }
}

extension UserDataQueryProperty
    on QueryBuilder<UserData, UserData, QQueryProperty> {
  QueryBuilder<UserData, int, QQueryOperations> clientVersionProperty() {
    return addPropertyNameInternal('clientVersion');
  }

  QueryBuilder<UserData, int?, QQueryOperations> currentPlayerIdProperty() {
    return addPropertyNameInternal('currentPlayerId');
  }

  QueryBuilder<UserData, int?, QQueryOperations> currentVersionProperty() {
    return addPropertyNameInternal('currentVersion');
  }

  QueryBuilder<UserData, String, QQueryOperations> dataFileBaseUriProperty() {
    return addPropertyNameInternal('dataFileBaseUri');
  }

  QueryBuilder<UserData, int, QQueryOperations>
      dataUpdateCheckDurationProperty() {
    return addPropertyNameInternal('dataUpdateCheckDuration');
  }

  QueryBuilder<UserData, int, QQueryOperations> defaultCraftingLevelProperty() {
    return addPropertyNameInternal('defaultCraftingLevel');
  }

  QueryBuilder<UserData, int, QQueryOperations>
      defaultCraftingMaxGearScoreBonusProperty() {
    return addPropertyNameInternal('defaultCraftingMaxGearScoreBonus');
  }

  QueryBuilder<UserData, int, QQueryOperations>
      defaultCraftingMinGearScoreBonusProperty() {
    return addPropertyNameInternal('defaultCraftingMinGearScoreBonus');
  }

  QueryBuilder<UserData, int, QQueryOperations> defaultRefiningBonusProperty() {
    return addPropertyNameInternal('defaultRefiningBonus');
  }

  QueryBuilder<UserData, int, QQueryOperations> defaultRefiningLevelProperty() {
    return addPropertyNameInternal('defaultRefiningLevel');
  }

  QueryBuilder<UserData, double, QQueryOperations>
      defaultStationTaxRateProperty() {
    return addPropertyNameInternal('defaultStationTaxRate');
  }

  QueryBuilder<UserData, int, QQueryOperations>
      defaultTerritoryRefiningBonusProperty() {
    return addPropertyNameInternal('defaultTerritoryRefiningBonus');
  }

  QueryBuilder<UserData, double, QQueryOperations>
      defaultTradingTaxRateProperty() {
    return addPropertyNameInternal('defaultTradingTaxRate');
  }

  QueryBuilder<UserData, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<UserData, String, QQueryOperations> infoFileUriProperty() {
    return addPropertyNameInternal('infoFileUri');
  }

  QueryBuilder<UserData, Map<String, int>, QQueryOperations>
      lastUpdateProperty() {
    return addPropertyNameInternal('lastUpdate');
  }

  QueryBuilder<UserData, Map<String, int>, QQueryOperations>
      lastUpdateCheckProperty() {
    return addPropertyNameInternal('lastUpdateCheck');
  }

  QueryBuilder<UserData, String, QQueryOperations> nwmpBaseUriProperty() {
    return addPropertyNameInternal('nwmpBaseUri');
  }

  QueryBuilder<UserData, String, QQueryOperations> nwmpCacheUriProperty() {
    return addPropertyNameInternal('nwmpCacheUri');
  }

  QueryBuilder<UserData, String, QQueryOperations> nwmpItemListUriProperty() {
    return addPropertyNameInternal('nwmpItemListUri');
  }

  QueryBuilder<UserData, int, QQueryOperations> nwmpTimeoutDurationProperty() {
    return addPropertyNameInternal('nwmpTimeoutDuration');
  }

  QueryBuilder<UserData, String, QQueryOperations> nwmpUpdateUriProperty() {
    return addPropertyNameInternal('nwmpUpdateUri');
  }

  QueryBuilder<UserData, int, QQueryOperations>
      priceUpdateCheckDurationProperty() {
    return addPropertyNameInternal('priceUpdateCheckDuration');
  }

  QueryBuilder<UserData, int, QQueryOperations>
      serverTimeoutDurationProperty() {
    return addPropertyNameInternal('serverTimeoutDuration');
  }

  QueryBuilder<UserData, bool, QQueryOperations> useSslProperty() {
    return addPropertyNameInternal('useSsl');
  }
}
