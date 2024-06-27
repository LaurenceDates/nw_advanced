// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPlayerCollection on Isar {
  IsarCollection<Player> get players => getCollection();
}

const PlayerSchema = CollectionSchema(
  name: 'Player',
  schema:
      '{"name":"Player","idName":"id","properties":[{"name":"arcana","type":"Long"},{"name":"arcanaMaxGearScoreBonus","type":"Long"},{"name":"arcanaMinGearScoreBonus","type":"Long"},{"name":"armoring","type":"Long"},{"name":"armoringMaxGearScoreBonus","type":"Long"},{"name":"armoringMinGearScoreBonus","type":"Long"},{"name":"cooking","type":"Long"},{"name":"cookingBonus","type":"Long"},{"name":"engineering","type":"Long"},{"name":"engineeringMaxGearScoreBonus","type":"Long"},{"name":"engineeringMinGearScoreBonus","type":"Long"},{"name":"furnishing","type":"Long"},{"name":"jewelcrafting","type":"Long"},{"name":"jewelcraftingMaxGearScoreBonus","type":"Long"},{"name":"jewelcraftingMinGearScoreBonus","type":"Long"},{"name":"leatherworking","type":"Long"},{"name":"leatherworkingRefiningBonus","type":"Long"},{"name":"name","type":"String"},{"name":"server","type":"String"},{"name":"smelting","type":"Long"},{"name":"smeltingRefiningBonus","type":"Long"},{"name":"stationTaxRate","type":"Double"},{"name":"stonecutting","type":"Long"},{"name":"stonecuttingRefiningBonus","type":"Long"},{"name":"territoryRefiningBonus","type":"Long"},{"name":"tradingTaxRate","type":"Double"},{"name":"weaponsmithing","type":"Long"},{"name":"weaponsmithingMaxGearScoreBonus","type":"Long"},{"name":"weaponsmithingMinGearScoreBonus","type":"Long"},{"name":"weaving","type":"Long"},{"name":"weavingRefiningBonus","type":"Long"},{"name":"woodworking","type":"Long"},{"name":"woodworkingRefiningBonus","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'arcana': 0,
    'arcanaMaxGearScoreBonus': 1,
    'arcanaMinGearScoreBonus': 2,
    'armoring': 3,
    'armoringMaxGearScoreBonus': 4,
    'armoringMinGearScoreBonus': 5,
    'cooking': 6,
    'cookingBonus': 7,
    'engineering': 8,
    'engineeringMaxGearScoreBonus': 9,
    'engineeringMinGearScoreBonus': 10,
    'furnishing': 11,
    'jewelcrafting': 12,
    'jewelcraftingMaxGearScoreBonus': 13,
    'jewelcraftingMinGearScoreBonus': 14,
    'leatherworking': 15,
    'leatherworkingRefiningBonus': 16,
    'name': 17,
    'server': 18,
    'smelting': 19,
    'smeltingRefiningBonus': 20,
    'stationTaxRate': 21,
    'stonecutting': 22,
    'stonecuttingRefiningBonus': 23,
    'territoryRefiningBonus': 24,
    'tradingTaxRate': 25,
    'weaponsmithing': 26,
    'weaponsmithingMaxGearScoreBonus': 27,
    'weaponsmithingMinGearScoreBonus': 28,
    'weaving': 29,
    'weavingRefiningBonus': 30,
    'woodworking': 31,
    'woodworkingRefiningBonus': 32
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _playerGetId,
  setId: _playerSetId,
  getLinks: _playerGetLinks,
  attachLinks: _playerAttachLinks,
  serializeNative: _playerSerializeNative,
  deserializeNative: _playerDeserializeNative,
  deserializePropNative: _playerDeserializePropNative,
  serializeWeb: _playerSerializeWeb,
  deserializeWeb: _playerDeserializeWeb,
  deserializePropWeb: _playerDeserializePropWeb,
  version: 3,
);

int? _playerGetId(Player object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _playerSetId(Player object, int id) {
  object.id = id;
}

List<IsarLinkBase> _playerGetLinks(Player object) {
  return [];
}

void _playerSerializeNative(
    IsarCollection<Player> collection,
    IsarRawObject rawObj,
    Player object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.arcana;
  final _arcana = value0;
  final value1 = object.arcanaMaxGearScoreBonus;
  final _arcanaMaxGearScoreBonus = value1;
  final value2 = object.arcanaMinGearScoreBonus;
  final _arcanaMinGearScoreBonus = value2;
  final value3 = object.armoring;
  final _armoring = value3;
  final value4 = object.armoringMaxGearScoreBonus;
  final _armoringMaxGearScoreBonus = value4;
  final value5 = object.armoringMinGearScoreBonus;
  final _armoringMinGearScoreBonus = value5;
  final value6 = object.cooking;
  final _cooking = value6;
  final value7 = object.cookingBonus;
  final _cookingBonus = value7;
  final value8 = object.engineering;
  final _engineering = value8;
  final value9 = object.engineeringMaxGearScoreBonus;
  final _engineeringMaxGearScoreBonus = value9;
  final value10 = object.engineeringMinGearScoreBonus;
  final _engineeringMinGearScoreBonus = value10;
  final value11 = object.furnishing;
  final _furnishing = value11;
  final value12 = object.jewelcrafting;
  final _jewelcrafting = value12;
  final value13 = object.jewelcraftingMaxGearScoreBonus;
  final _jewelcraftingMaxGearScoreBonus = value13;
  final value14 = object.jewelcraftingMinGearScoreBonus;
  final _jewelcraftingMinGearScoreBonus = value14;
  final value15 = object.leatherworking;
  final _leatherworking = value15;
  final value16 = object.leatherworkingRefiningBonus;
  final _leatherworkingRefiningBonus = value16;
  final value17 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value17);
  dynamicSize += (_name.length) as int;
  final value18 = object.server;
  IsarUint8List? _server;
  if (value18 != null) {
    _server = IsarBinaryWriter.utf8Encoder.convert(value18);
  }
  dynamicSize += (_server?.length ?? 0) as int;
  final value19 = object.smelting;
  final _smelting = value19;
  final value20 = object.smeltingRefiningBonus;
  final _smeltingRefiningBonus = value20;
  final value21 = object.stationTaxRate;
  final _stationTaxRate = value21;
  final value22 = object.stonecutting;
  final _stonecutting = value22;
  final value23 = object.stonecuttingRefiningBonus;
  final _stonecuttingRefiningBonus = value23;
  final value24 = object.territoryRefiningBonus;
  final _territoryRefiningBonus = value24;
  final value25 = object.tradingTaxRate;
  final _tradingTaxRate = value25;
  final value26 = object.weaponsmithing;
  final _weaponsmithing = value26;
  final value27 = object.weaponsmithingMaxGearScoreBonus;
  final _weaponsmithingMaxGearScoreBonus = value27;
  final value28 = object.weaponsmithingMinGearScoreBonus;
  final _weaponsmithingMinGearScoreBonus = value28;
  final value29 = object.weaving;
  final _weaving = value29;
  final value30 = object.weavingRefiningBonus;
  final _weavingRefiningBonus = value30;
  final value31 = object.woodworking;
  final _woodworking = value31;
  final value32 = object.woodworkingRefiningBonus;
  final _woodworkingRefiningBonus = value32;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _arcana);
  writer.writeLong(offsets[1], _arcanaMaxGearScoreBonus);
  writer.writeLong(offsets[2], _arcanaMinGearScoreBonus);
  writer.writeLong(offsets[3], _armoring);
  writer.writeLong(offsets[4], _armoringMaxGearScoreBonus);
  writer.writeLong(offsets[5], _armoringMinGearScoreBonus);
  writer.writeLong(offsets[6], _cooking);
  writer.writeLong(offsets[7], _cookingBonus);
  writer.writeLong(offsets[8], _engineering);
  writer.writeLong(offsets[9], _engineeringMaxGearScoreBonus);
  writer.writeLong(offsets[10], _engineeringMinGearScoreBonus);
  writer.writeLong(offsets[11], _furnishing);
  writer.writeLong(offsets[12], _jewelcrafting);
  writer.writeLong(offsets[13], _jewelcraftingMaxGearScoreBonus);
  writer.writeLong(offsets[14], _jewelcraftingMinGearScoreBonus);
  writer.writeLong(offsets[15], _leatherworking);
  writer.writeLong(offsets[16], _leatherworkingRefiningBonus);
  writer.writeBytes(offsets[17], _name);
  writer.writeBytes(offsets[18], _server);
  writer.writeLong(offsets[19], _smelting);
  writer.writeLong(offsets[20], _smeltingRefiningBonus);
  writer.writeDouble(offsets[21], _stationTaxRate);
  writer.writeLong(offsets[22], _stonecutting);
  writer.writeLong(offsets[23], _stonecuttingRefiningBonus);
  writer.writeLong(offsets[24], _territoryRefiningBonus);
  writer.writeDouble(offsets[25], _tradingTaxRate);
  writer.writeLong(offsets[26], _weaponsmithing);
  writer.writeLong(offsets[27], _weaponsmithingMaxGearScoreBonus);
  writer.writeLong(offsets[28], _weaponsmithingMinGearScoreBonus);
  writer.writeLong(offsets[29], _weaving);
  writer.writeLong(offsets[30], _weavingRefiningBonus);
  writer.writeLong(offsets[31], _woodworking);
  writer.writeLong(offsets[32], _woodworkingRefiningBonus);
}

Player _playerDeserializeNative(IsarCollection<Player> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Player();
  object.arcana = reader.readLongOrNull(offsets[0]);
  object.arcanaMaxGearScoreBonus = reader.readLongOrNull(offsets[1]);
  object.arcanaMinGearScoreBonus = reader.readLongOrNull(offsets[2]);
  object.armoring = reader.readLongOrNull(offsets[3]);
  object.armoringMaxGearScoreBonus = reader.readLongOrNull(offsets[4]);
  object.armoringMinGearScoreBonus = reader.readLongOrNull(offsets[5]);
  object.cooking = reader.readLongOrNull(offsets[6]);
  object.cookingBonus = reader.readLongOrNull(offsets[7]);
  object.engineering = reader.readLongOrNull(offsets[8]);
  object.engineeringMaxGearScoreBonus = reader.readLongOrNull(offsets[9]);
  object.engineeringMinGearScoreBonus = reader.readLongOrNull(offsets[10]);
  object.furnishing = reader.readLongOrNull(offsets[11]);
  object.id = id;
  object.jewelcrafting = reader.readLongOrNull(offsets[12]);
  object.jewelcraftingMaxGearScoreBonus = reader.readLongOrNull(offsets[13]);
  object.jewelcraftingMinGearScoreBonus = reader.readLongOrNull(offsets[14]);
  object.leatherworking = reader.readLongOrNull(offsets[15]);
  object.leatherworkingRefiningBonus = reader.readLongOrNull(offsets[16]);
  object.name = reader.readString(offsets[17]);
  object.server = reader.readStringOrNull(offsets[18]);
  object.smelting = reader.readLongOrNull(offsets[19]);
  object.smeltingRefiningBonus = reader.readLongOrNull(offsets[20]);
  object.stationTaxRate = reader.readDoubleOrNull(offsets[21]);
  object.stonecutting = reader.readLongOrNull(offsets[22]);
  object.stonecuttingRefiningBonus = reader.readLongOrNull(offsets[23]);
  object.territoryRefiningBonus = reader.readLongOrNull(offsets[24]);
  object.tradingTaxRate = reader.readDoubleOrNull(offsets[25]);
  object.weaponsmithing = reader.readLongOrNull(offsets[26]);
  object.weaponsmithingMaxGearScoreBonus = reader.readLongOrNull(offsets[27]);
  object.weaponsmithingMinGearScoreBonus = reader.readLongOrNull(offsets[28]);
  object.weaving = reader.readLongOrNull(offsets[29]);
  object.weavingRefiningBonus = reader.readLongOrNull(offsets[30]);
  object.woodworking = reader.readLongOrNull(offsets[31]);
  object.woodworkingRefiningBonus = reader.readLongOrNull(offsets[32]);
  return object;
}

P _playerDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readLongOrNull(offset)) as P;
    case 20:
      return (reader.readLongOrNull(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readLongOrNull(offset)) as P;
    case 23:
      return (reader.readLongOrNull(offset)) as P;
    case 24:
      return (reader.readLongOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (reader.readLongOrNull(offset)) as P;
    case 27:
      return (reader.readLongOrNull(offset)) as P;
    case 28:
      return (reader.readLongOrNull(offset)) as P;
    case 29:
      return (reader.readLongOrNull(offset)) as P;
    case 30:
      return (reader.readLongOrNull(offset)) as P;
    case 31:
      return (reader.readLongOrNull(offset)) as P;
    case 32:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _playerSerializeWeb(IsarCollection<Player> collection, Player object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'arcana', object.arcana);
  IsarNative.jsObjectSet(
      jsObj, 'arcanaMaxGearScoreBonus', object.arcanaMaxGearScoreBonus);
  IsarNative.jsObjectSet(
      jsObj, 'arcanaMinGearScoreBonus', object.arcanaMinGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'armoring', object.armoring);
  IsarNative.jsObjectSet(
      jsObj, 'armoringMaxGearScoreBonus', object.armoringMaxGearScoreBonus);
  IsarNative.jsObjectSet(
      jsObj, 'armoringMinGearScoreBonus', object.armoringMinGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'cooking', object.cooking);
  IsarNative.jsObjectSet(jsObj, 'cookingBonus', object.cookingBonus);
  IsarNative.jsObjectSet(jsObj, 'engineering', object.engineering);
  IsarNative.jsObjectSet(jsObj, 'engineeringMaxGearScoreBonus',
      object.engineeringMaxGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'engineeringMinGearScoreBonus',
      object.engineeringMinGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'furnishing', object.furnishing);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'jewelcrafting', object.jewelcrafting);
  IsarNative.jsObjectSet(jsObj, 'jewelcraftingMaxGearScoreBonus',
      object.jewelcraftingMaxGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'jewelcraftingMinGearScoreBonus',
      object.jewelcraftingMinGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'leatherworking', object.leatherworking);
  IsarNative.jsObjectSet(
      jsObj, 'leatherworkingRefiningBonus', object.leatherworkingRefiningBonus);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'server', object.server);
  IsarNative.jsObjectSet(jsObj, 'smelting', object.smelting);
  IsarNative.jsObjectSet(
      jsObj, 'smeltingRefiningBonus', object.smeltingRefiningBonus);
  IsarNative.jsObjectSet(jsObj, 'stationTaxRate', object.stationTaxRate);
  IsarNative.jsObjectSet(jsObj, 'stonecutting', object.stonecutting);
  IsarNative.jsObjectSet(
      jsObj, 'stonecuttingRefiningBonus', object.stonecuttingRefiningBonus);
  IsarNative.jsObjectSet(
      jsObj, 'territoryRefiningBonus', object.territoryRefiningBonus);
  IsarNative.jsObjectSet(jsObj, 'tradingTaxRate', object.tradingTaxRate);
  IsarNative.jsObjectSet(jsObj, 'weaponsmithing', object.weaponsmithing);
  IsarNative.jsObjectSet(jsObj, 'weaponsmithingMaxGearScoreBonus',
      object.weaponsmithingMaxGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'weaponsmithingMinGearScoreBonus',
      object.weaponsmithingMinGearScoreBonus);
  IsarNative.jsObjectSet(jsObj, 'weaving', object.weaving);
  IsarNative.jsObjectSet(
      jsObj, 'weavingRefiningBonus', object.weavingRefiningBonus);
  IsarNative.jsObjectSet(jsObj, 'woodworking', object.woodworking);
  IsarNative.jsObjectSet(
      jsObj, 'woodworkingRefiningBonus', object.woodworkingRefiningBonus);
  return jsObj;
}

Player _playerDeserializeWeb(IsarCollection<Player> collection, dynamic jsObj) {
  final object = Player();
  object.arcana = IsarNative.jsObjectGet(jsObj, 'arcana');
  object.arcanaMaxGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'arcanaMaxGearScoreBonus');
  object.arcanaMinGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'arcanaMinGearScoreBonus');
  object.armoring = IsarNative.jsObjectGet(jsObj, 'armoring');
  object.armoringMaxGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'armoringMaxGearScoreBonus');
  object.armoringMinGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'armoringMinGearScoreBonus');
  object.cooking = IsarNative.jsObjectGet(jsObj, 'cooking');
  object.cookingBonus = IsarNative.jsObjectGet(jsObj, 'cookingBonus');
  object.engineering = IsarNative.jsObjectGet(jsObj, 'engineering');
  object.engineeringMaxGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'engineeringMaxGearScoreBonus');
  object.engineeringMinGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'engineeringMinGearScoreBonus');
  object.furnishing = IsarNative.jsObjectGet(jsObj, 'furnishing');
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.jewelcrafting = IsarNative.jsObjectGet(jsObj, 'jewelcrafting');
  object.jewelcraftingMaxGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'jewelcraftingMaxGearScoreBonus');
  object.jewelcraftingMinGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'jewelcraftingMinGearScoreBonus');
  object.leatherworking = IsarNative.jsObjectGet(jsObj, 'leatherworking');
  object.leatherworkingRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'leatherworkingRefiningBonus');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.server = IsarNative.jsObjectGet(jsObj, 'server');
  object.smelting = IsarNative.jsObjectGet(jsObj, 'smelting');
  object.smeltingRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'smeltingRefiningBonus');
  object.stationTaxRate = IsarNative.jsObjectGet(jsObj, 'stationTaxRate');
  object.stonecutting = IsarNative.jsObjectGet(jsObj, 'stonecutting');
  object.stonecuttingRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'stonecuttingRefiningBonus');
  object.territoryRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'territoryRefiningBonus');
  object.tradingTaxRate = IsarNative.jsObjectGet(jsObj, 'tradingTaxRate');
  object.weaponsmithing = IsarNative.jsObjectGet(jsObj, 'weaponsmithing');
  object.weaponsmithingMaxGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'weaponsmithingMaxGearScoreBonus');
  object.weaponsmithingMinGearScoreBonus =
      IsarNative.jsObjectGet(jsObj, 'weaponsmithingMinGearScoreBonus');
  object.weaving = IsarNative.jsObjectGet(jsObj, 'weaving');
  object.weavingRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'weavingRefiningBonus');
  object.woodworking = IsarNative.jsObjectGet(jsObj, 'woodworking');
  object.woodworkingRefiningBonus =
      IsarNative.jsObjectGet(jsObj, 'woodworkingRefiningBonus');
  return object;
}

P _playerDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'arcana':
      return (IsarNative.jsObjectGet(jsObj, 'arcana')) as P;
    case 'arcanaMaxGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'arcanaMaxGearScoreBonus')) as P;
    case 'arcanaMinGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'arcanaMinGearScoreBonus')) as P;
    case 'armoring':
      return (IsarNative.jsObjectGet(jsObj, 'armoring')) as P;
    case 'armoringMaxGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'armoringMaxGearScoreBonus')) as P;
    case 'armoringMinGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'armoringMinGearScoreBonus')) as P;
    case 'cooking':
      return (IsarNative.jsObjectGet(jsObj, 'cooking')) as P;
    case 'cookingBonus':
      return (IsarNative.jsObjectGet(jsObj, 'cookingBonus')) as P;
    case 'engineering':
      return (IsarNative.jsObjectGet(jsObj, 'engineering')) as P;
    case 'engineeringMaxGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'engineeringMaxGearScoreBonus'))
          as P;
    case 'engineeringMinGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'engineeringMinGearScoreBonus'))
          as P;
    case 'furnishing':
      return (IsarNative.jsObjectGet(jsObj, 'furnishing')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'jewelcrafting':
      return (IsarNative.jsObjectGet(jsObj, 'jewelcrafting')) as P;
    case 'jewelcraftingMaxGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'jewelcraftingMaxGearScoreBonus'))
          as P;
    case 'jewelcraftingMinGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'jewelcraftingMinGearScoreBonus'))
          as P;
    case 'leatherworking':
      return (IsarNative.jsObjectGet(jsObj, 'leatherworking')) as P;
    case 'leatherworkingRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'leatherworkingRefiningBonus'))
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'server':
      return (IsarNative.jsObjectGet(jsObj, 'server')) as P;
    case 'smelting':
      return (IsarNative.jsObjectGet(jsObj, 'smelting')) as P;
    case 'smeltingRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'smeltingRefiningBonus')) as P;
    case 'stationTaxRate':
      return (IsarNative.jsObjectGet(jsObj, 'stationTaxRate')) as P;
    case 'stonecutting':
      return (IsarNative.jsObjectGet(jsObj, 'stonecutting')) as P;
    case 'stonecuttingRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'stonecuttingRefiningBonus')) as P;
    case 'territoryRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'territoryRefiningBonus')) as P;
    case 'tradingTaxRate':
      return (IsarNative.jsObjectGet(jsObj, 'tradingTaxRate')) as P;
    case 'weaponsmithing':
      return (IsarNative.jsObjectGet(jsObj, 'weaponsmithing')) as P;
    case 'weaponsmithingMaxGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'weaponsmithingMaxGearScoreBonus'))
          as P;
    case 'weaponsmithingMinGearScoreBonus':
      return (IsarNative.jsObjectGet(jsObj, 'weaponsmithingMinGearScoreBonus'))
          as P;
    case 'weaving':
      return (IsarNative.jsObjectGet(jsObj, 'weaving')) as P;
    case 'weavingRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'weavingRefiningBonus')) as P;
    case 'woodworking':
      return (IsarNative.jsObjectGet(jsObj, 'woodworking')) as P;
    case 'woodworkingRefiningBonus':
      return (IsarNative.jsObjectGet(jsObj, 'woodworkingRefiningBonus')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _playerAttachLinks(IsarCollection col, int id, Player object) {}

extension PlayerQueryWhereSort on QueryBuilder<Player, Player, QWhere> {
  QueryBuilder<Player, Player, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PlayerQueryWhere on QueryBuilder<Player, Player, QWhereClause> {
  QueryBuilder<Player, Player, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Player, Player, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Player, Player, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Player, Player, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Player, Player, QAfterWhereClause> idBetween(
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

extension PlayerQueryFilter on QueryBuilder<Player, Player, QFilterCondition> {
  QueryBuilder<Player, Player, QAfterFilterCondition> arcanaIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'arcana',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> arcanaEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'arcana',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> arcanaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'arcana',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> arcanaLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'arcana',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> arcanaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'arcana',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMaxGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'arcanaMaxGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMaxGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'arcanaMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMaxGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'arcanaMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMaxGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'arcanaMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMaxGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'arcanaMaxGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMinGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'arcanaMinGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMinGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'arcanaMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMinGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'arcanaMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMinGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'arcanaMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      arcanaMinGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'arcanaMinGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> armoringIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'armoring',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> armoringEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'armoring',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> armoringGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'armoring',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> armoringLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'armoring',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> armoringBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'armoring',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMaxGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'armoringMaxGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMaxGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'armoringMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMaxGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'armoringMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMaxGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'armoringMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMaxGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'armoringMaxGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMinGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'armoringMinGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMinGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'armoringMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMinGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'armoringMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMinGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'armoringMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      armoringMinGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'armoringMinGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'cooking',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'cooking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'cooking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'cooking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'cooking',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'cookingBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingBonusEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'cookingBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'cookingBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'cookingBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> cookingBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'cookingBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> engineeringIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'engineering',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> engineeringEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'engineering',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> engineeringGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'engineering',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> engineeringLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'engineering',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> engineeringBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'engineering',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMaxGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'engineeringMaxGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMaxGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'engineeringMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMaxGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'engineeringMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMaxGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'engineeringMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMaxGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'engineeringMaxGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMinGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'engineeringMinGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMinGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'engineeringMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMinGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'engineeringMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMinGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'engineeringMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      engineeringMinGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'engineeringMinGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> furnishingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'furnishing',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> furnishingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'furnishing',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> furnishingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'furnishing',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> furnishingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'furnishing',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> furnishingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'furnishing',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Player, Player, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Player, Player, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Player, Player, QAfterFilterCondition> jewelcraftingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'jewelcrafting',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> jewelcraftingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'jewelcrafting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> jewelcraftingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'jewelcrafting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> jewelcraftingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'jewelcrafting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> jewelcraftingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'jewelcrafting',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMaxGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'jewelcraftingMaxGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMaxGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'jewelcraftingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMaxGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'jewelcraftingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMaxGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'jewelcraftingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMaxGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'jewelcraftingMaxGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMinGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'jewelcraftingMinGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMinGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'jewelcraftingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMinGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'jewelcraftingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMinGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'jewelcraftingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      jewelcraftingMinGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'jewelcraftingMinGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> leatherworkingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'leatherworking',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> leatherworkingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'leatherworking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> leatherworkingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'leatherworking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> leatherworkingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'leatherworking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> leatherworkingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'leatherworking',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      leatherworkingRefiningBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'leatherworkingRefiningBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      leatherworkingRefiningBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'leatherworkingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      leatherworkingRefiningBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'leatherworkingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      leatherworkingRefiningBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'leatherworkingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      leatherworkingRefiningBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'leatherworkingRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'server',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'server',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'server',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'server',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'server',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'server',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'server',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'server',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> serverMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'server',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> smeltingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'smelting',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> smeltingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'smelting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> smeltingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'smelting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> smeltingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'smelting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> smeltingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'smelting',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      smeltingRefiningBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'smeltingRefiningBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      smeltingRefiningBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'smeltingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      smeltingRefiningBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'smeltingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      smeltingRefiningBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'smeltingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      smeltingRefiningBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'smeltingRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stationTaxRateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stationTaxRate',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stationTaxRateGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'stationTaxRate',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stationTaxRateLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'stationTaxRate',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stationTaxRateBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'stationTaxRate',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stonecuttingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stonecutting',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stonecuttingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stonecutting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stonecuttingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'stonecutting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stonecuttingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'stonecutting',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> stonecuttingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'stonecutting',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      stonecuttingRefiningBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stonecuttingRefiningBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      stonecuttingRefiningBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stonecuttingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      stonecuttingRefiningBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'stonecuttingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      stonecuttingRefiningBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'stonecuttingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      stonecuttingRefiningBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'stonecuttingRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      territoryRefiningBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'territoryRefiningBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      territoryRefiningBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'territoryRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      territoryRefiningBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'territoryRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      territoryRefiningBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'territoryRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      territoryRefiningBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'territoryRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> tradingTaxRateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'tradingTaxRate',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> tradingTaxRateGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'tradingTaxRate',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> tradingTaxRateLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'tradingTaxRate',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> tradingTaxRateBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tradingTaxRate',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weaponsmithingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'weaponsmithing',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weaponsmithingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'weaponsmithing',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weaponsmithingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'weaponsmithing',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weaponsmithingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'weaponsmithing',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weaponsmithingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'weaponsmithing',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMaxGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'weaponsmithingMaxGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMaxGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'weaponsmithingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMaxGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'weaponsmithingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMaxGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'weaponsmithingMaxGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMaxGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'weaponsmithingMaxGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMinGearScoreBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'weaponsmithingMinGearScoreBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMinGearScoreBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'weaponsmithingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMinGearScoreBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'weaponsmithingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMinGearScoreBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'weaponsmithingMinGearScoreBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weaponsmithingMinGearScoreBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'weaponsmithingMinGearScoreBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weavingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'weaving',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weavingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'weaving',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weavingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'weaving',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weavingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'weaving',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> weavingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'weaving',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weavingRefiningBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'weavingRefiningBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weavingRefiningBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'weavingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weavingRefiningBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'weavingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weavingRefiningBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'weavingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      weavingRefiningBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'weavingRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> woodworkingIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'woodworking',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> woodworkingEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'woodworking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> woodworkingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'woodworking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> woodworkingLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'woodworking',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition> woodworkingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'woodworking',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      woodworkingRefiningBonusIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'woodworkingRefiningBonus',
      value: null,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      woodworkingRefiningBonusEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'woodworkingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      woodworkingRefiningBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'woodworkingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      woodworkingRefiningBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'woodworkingRefiningBonus',
      value: value,
    ));
  }

  QueryBuilder<Player, Player, QAfterFilterCondition>
      woodworkingRefiningBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'woodworkingRefiningBonus',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension PlayerQueryLinks on QueryBuilder<Player, Player, QFilterCondition> {}

extension PlayerQueryWhereSortBy on QueryBuilder<Player, Player, QSortBy> {
  QueryBuilder<Player, Player, QAfterSortBy> sortByArcana() {
    return addSortByInternal('arcana', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArcanaDesc() {
    return addSortByInternal('arcana', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArcanaMaxGearScoreBonus() {
    return addSortByInternal('arcanaMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByArcanaMaxGearScoreBonusDesc() {
    return addSortByInternal('arcanaMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArcanaMinGearScoreBonus() {
    return addSortByInternal('arcanaMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByArcanaMinGearScoreBonusDesc() {
    return addSortByInternal('arcanaMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArmoring() {
    return addSortByInternal('armoring', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArmoringDesc() {
    return addSortByInternal('armoring', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArmoringMaxGearScoreBonus() {
    return addSortByInternal('armoringMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByArmoringMaxGearScoreBonusDesc() {
    return addSortByInternal('armoringMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByArmoringMinGearScoreBonus() {
    return addSortByInternal('armoringMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByArmoringMinGearScoreBonusDesc() {
    return addSortByInternal('armoringMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByCooking() {
    return addSortByInternal('cooking', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByCookingDesc() {
    return addSortByInternal('cooking', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByCookingBonus() {
    return addSortByInternal('cookingBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByCookingBonusDesc() {
    return addSortByInternal('cookingBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByEngineering() {
    return addSortByInternal('engineering', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByEngineeringDesc() {
    return addSortByInternal('engineering', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByEngineeringMaxGearScoreBonus() {
    return addSortByInternal('engineeringMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByEngineeringMaxGearScoreBonusDesc() {
    return addSortByInternal('engineeringMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByEngineeringMinGearScoreBonus() {
    return addSortByInternal('engineeringMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByEngineeringMinGearScoreBonusDesc() {
    return addSortByInternal('engineeringMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByFurnishing() {
    return addSortByInternal('furnishing', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByFurnishingDesc() {
    return addSortByInternal('furnishing', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByJewelcrafting() {
    return addSortByInternal('jewelcrafting', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByJewelcraftingDesc() {
    return addSortByInternal('jewelcrafting', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByJewelcraftingMaxGearScoreBonus() {
    return addSortByInternal('jewelcraftingMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByJewelcraftingMaxGearScoreBonusDesc() {
    return addSortByInternal('jewelcraftingMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByJewelcraftingMinGearScoreBonus() {
    return addSortByInternal('jewelcraftingMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByJewelcraftingMinGearScoreBonusDesc() {
    return addSortByInternal('jewelcraftingMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByLeatherworking() {
    return addSortByInternal('leatherworking', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByLeatherworkingDesc() {
    return addSortByInternal('leatherworking', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByLeatherworkingRefiningBonus() {
    return addSortByInternal('leatherworkingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByLeatherworkingRefiningBonusDesc() {
    return addSortByInternal('leatherworkingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByServer() {
    return addSortByInternal('server', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByServerDesc() {
    return addSortByInternal('server', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortBySmelting() {
    return addSortByInternal('smelting', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortBySmeltingDesc() {
    return addSortByInternal('smelting', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortBySmeltingRefiningBonus() {
    return addSortByInternal('smeltingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortBySmeltingRefiningBonusDesc() {
    return addSortByInternal('smeltingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByStationTaxRate() {
    return addSortByInternal('stationTaxRate', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByStationTaxRateDesc() {
    return addSortByInternal('stationTaxRate', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByStonecutting() {
    return addSortByInternal('stonecutting', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByStonecuttingDesc() {
    return addSortByInternal('stonecutting', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByStonecuttingRefiningBonus() {
    return addSortByInternal('stonecuttingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByStonecuttingRefiningBonusDesc() {
    return addSortByInternal('stonecuttingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByTerritoryRefiningBonus() {
    return addSortByInternal('territoryRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByTerritoryRefiningBonusDesc() {
    return addSortByInternal('territoryRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByTradingTaxRate() {
    return addSortByInternal('tradingTaxRate', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByTradingTaxRateDesc() {
    return addSortByInternal('tradingTaxRate', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWeaponsmithing() {
    return addSortByInternal('weaponsmithing', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWeaponsmithingDesc() {
    return addSortByInternal('weaponsmithing', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByWeaponsmithingMaxGearScoreBonus() {
    return addSortByInternal('weaponsmithingMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByWeaponsmithingMaxGearScoreBonusDesc() {
    return addSortByInternal('weaponsmithingMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByWeaponsmithingMinGearScoreBonus() {
    return addSortByInternal('weaponsmithingMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByWeaponsmithingMinGearScoreBonusDesc() {
    return addSortByInternal('weaponsmithingMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWeaving() {
    return addSortByInternal('weaving', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWeavingDesc() {
    return addSortByInternal('weaving', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWeavingRefiningBonus() {
    return addSortByInternal('weavingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWeavingRefiningBonusDesc() {
    return addSortByInternal('weavingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWoodworking() {
    return addSortByInternal('woodworking', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWoodworkingDesc() {
    return addSortByInternal('woodworking', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> sortByWoodworkingRefiningBonus() {
    return addSortByInternal('woodworkingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      sortByWoodworkingRefiningBonusDesc() {
    return addSortByInternal('woodworkingRefiningBonus', Sort.desc);
  }
}

extension PlayerQueryWhereSortThenBy
    on QueryBuilder<Player, Player, QSortThenBy> {
  QueryBuilder<Player, Player, QAfterSortBy> thenByArcana() {
    return addSortByInternal('arcana', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArcanaDesc() {
    return addSortByInternal('arcana', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArcanaMaxGearScoreBonus() {
    return addSortByInternal('arcanaMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByArcanaMaxGearScoreBonusDesc() {
    return addSortByInternal('arcanaMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArcanaMinGearScoreBonus() {
    return addSortByInternal('arcanaMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByArcanaMinGearScoreBonusDesc() {
    return addSortByInternal('arcanaMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArmoring() {
    return addSortByInternal('armoring', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArmoringDesc() {
    return addSortByInternal('armoring', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArmoringMaxGearScoreBonus() {
    return addSortByInternal('armoringMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByArmoringMaxGearScoreBonusDesc() {
    return addSortByInternal('armoringMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByArmoringMinGearScoreBonus() {
    return addSortByInternal('armoringMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByArmoringMinGearScoreBonusDesc() {
    return addSortByInternal('armoringMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByCooking() {
    return addSortByInternal('cooking', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByCookingDesc() {
    return addSortByInternal('cooking', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByCookingBonus() {
    return addSortByInternal('cookingBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByCookingBonusDesc() {
    return addSortByInternal('cookingBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByEngineering() {
    return addSortByInternal('engineering', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByEngineeringDesc() {
    return addSortByInternal('engineering', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByEngineeringMaxGearScoreBonus() {
    return addSortByInternal('engineeringMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByEngineeringMaxGearScoreBonusDesc() {
    return addSortByInternal('engineeringMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByEngineeringMinGearScoreBonus() {
    return addSortByInternal('engineeringMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByEngineeringMinGearScoreBonusDesc() {
    return addSortByInternal('engineeringMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByFurnishing() {
    return addSortByInternal('furnishing', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByFurnishingDesc() {
    return addSortByInternal('furnishing', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByJewelcrafting() {
    return addSortByInternal('jewelcrafting', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByJewelcraftingDesc() {
    return addSortByInternal('jewelcrafting', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByJewelcraftingMaxGearScoreBonus() {
    return addSortByInternal('jewelcraftingMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByJewelcraftingMaxGearScoreBonusDesc() {
    return addSortByInternal('jewelcraftingMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByJewelcraftingMinGearScoreBonus() {
    return addSortByInternal('jewelcraftingMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByJewelcraftingMinGearScoreBonusDesc() {
    return addSortByInternal('jewelcraftingMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByLeatherworking() {
    return addSortByInternal('leatherworking', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByLeatherworkingDesc() {
    return addSortByInternal('leatherworking', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByLeatherworkingRefiningBonus() {
    return addSortByInternal('leatherworkingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByLeatherworkingRefiningBonusDesc() {
    return addSortByInternal('leatherworkingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByServer() {
    return addSortByInternal('server', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByServerDesc() {
    return addSortByInternal('server', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenBySmelting() {
    return addSortByInternal('smelting', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenBySmeltingDesc() {
    return addSortByInternal('smelting', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenBySmeltingRefiningBonus() {
    return addSortByInternal('smeltingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenBySmeltingRefiningBonusDesc() {
    return addSortByInternal('smeltingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByStationTaxRate() {
    return addSortByInternal('stationTaxRate', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByStationTaxRateDesc() {
    return addSortByInternal('stationTaxRate', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByStonecutting() {
    return addSortByInternal('stonecutting', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByStonecuttingDesc() {
    return addSortByInternal('stonecutting', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByStonecuttingRefiningBonus() {
    return addSortByInternal('stonecuttingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByStonecuttingRefiningBonusDesc() {
    return addSortByInternal('stonecuttingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByTerritoryRefiningBonus() {
    return addSortByInternal('territoryRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByTerritoryRefiningBonusDesc() {
    return addSortByInternal('territoryRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByTradingTaxRate() {
    return addSortByInternal('tradingTaxRate', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByTradingTaxRateDesc() {
    return addSortByInternal('tradingTaxRate', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWeaponsmithing() {
    return addSortByInternal('weaponsmithing', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWeaponsmithingDesc() {
    return addSortByInternal('weaponsmithing', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByWeaponsmithingMaxGearScoreBonus() {
    return addSortByInternal('weaponsmithingMaxGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByWeaponsmithingMaxGearScoreBonusDesc() {
    return addSortByInternal('weaponsmithingMaxGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByWeaponsmithingMinGearScoreBonus() {
    return addSortByInternal('weaponsmithingMinGearScoreBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByWeaponsmithingMinGearScoreBonusDesc() {
    return addSortByInternal('weaponsmithingMinGearScoreBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWeaving() {
    return addSortByInternal('weaving', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWeavingDesc() {
    return addSortByInternal('weaving', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWeavingRefiningBonus() {
    return addSortByInternal('weavingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWeavingRefiningBonusDesc() {
    return addSortByInternal('weavingRefiningBonus', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWoodworking() {
    return addSortByInternal('woodworking', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWoodworkingDesc() {
    return addSortByInternal('woodworking', Sort.desc);
  }

  QueryBuilder<Player, Player, QAfterSortBy> thenByWoodworkingRefiningBonus() {
    return addSortByInternal('woodworkingRefiningBonus', Sort.asc);
  }

  QueryBuilder<Player, Player, QAfterSortBy>
      thenByWoodworkingRefiningBonusDesc() {
    return addSortByInternal('woodworkingRefiningBonus', Sort.desc);
  }
}

extension PlayerQueryWhereDistinct on QueryBuilder<Player, Player, QDistinct> {
  QueryBuilder<Player, Player, QDistinct> distinctByArcana() {
    return addDistinctByInternal('arcana');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByArcanaMaxGearScoreBonus() {
    return addDistinctByInternal('arcanaMaxGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByArcanaMinGearScoreBonus() {
    return addDistinctByInternal('arcanaMinGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByArmoring() {
    return addDistinctByInternal('armoring');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByArmoringMaxGearScoreBonus() {
    return addDistinctByInternal('armoringMaxGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByArmoringMinGearScoreBonus() {
    return addDistinctByInternal('armoringMinGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByCooking() {
    return addDistinctByInternal('cooking');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByCookingBonus() {
    return addDistinctByInternal('cookingBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByEngineering() {
    return addDistinctByInternal('engineering');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByEngineeringMaxGearScoreBonus() {
    return addDistinctByInternal('engineeringMaxGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByEngineeringMinGearScoreBonus() {
    return addDistinctByInternal('engineeringMinGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByFurnishing() {
    return addDistinctByInternal('furnishing');
  }

  QueryBuilder<Player, Player, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByJewelcrafting() {
    return addDistinctByInternal('jewelcrafting');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByJewelcraftingMaxGearScoreBonus() {
    return addDistinctByInternal('jewelcraftingMaxGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByJewelcraftingMinGearScoreBonus() {
    return addDistinctByInternal('jewelcraftingMinGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByLeatherworking() {
    return addDistinctByInternal('leatherworking');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByLeatherworkingRefiningBonus() {
    return addDistinctByInternal('leatherworkingRefiningBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Player, Player, QDistinct> distinctByServer(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('server', caseSensitive: caseSensitive);
  }

  QueryBuilder<Player, Player, QDistinct> distinctBySmelting() {
    return addDistinctByInternal('smelting');
  }

  QueryBuilder<Player, Player, QDistinct> distinctBySmeltingRefiningBonus() {
    return addDistinctByInternal('smeltingRefiningBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByStationTaxRate() {
    return addDistinctByInternal('stationTaxRate');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByStonecutting() {
    return addDistinctByInternal('stonecutting');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByStonecuttingRefiningBonus() {
    return addDistinctByInternal('stonecuttingRefiningBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByTerritoryRefiningBonus() {
    return addDistinctByInternal('territoryRefiningBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByTradingTaxRate() {
    return addDistinctByInternal('tradingTaxRate');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByWeaponsmithing() {
    return addDistinctByInternal('weaponsmithing');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByWeaponsmithingMaxGearScoreBonus() {
    return addDistinctByInternal('weaponsmithingMaxGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct>
      distinctByWeaponsmithingMinGearScoreBonus() {
    return addDistinctByInternal('weaponsmithingMinGearScoreBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByWeaving() {
    return addDistinctByInternal('weaving');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByWeavingRefiningBonus() {
    return addDistinctByInternal('weavingRefiningBonus');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByWoodworking() {
    return addDistinctByInternal('woodworking');
  }

  QueryBuilder<Player, Player, QDistinct> distinctByWoodworkingRefiningBonus() {
    return addDistinctByInternal('woodworkingRefiningBonus');
  }
}

extension PlayerQueryProperty on QueryBuilder<Player, Player, QQueryProperty> {
  QueryBuilder<Player, int?, QQueryOperations> arcanaProperty() {
    return addPropertyNameInternal('arcana');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      arcanaMaxGearScoreBonusProperty() {
    return addPropertyNameInternal('arcanaMaxGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      arcanaMinGearScoreBonusProperty() {
    return addPropertyNameInternal('arcanaMinGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> armoringProperty() {
    return addPropertyNameInternal('armoring');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      armoringMaxGearScoreBonusProperty() {
    return addPropertyNameInternal('armoringMaxGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      armoringMinGearScoreBonusProperty() {
    return addPropertyNameInternal('armoringMinGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> cookingProperty() {
    return addPropertyNameInternal('cooking');
  }

  QueryBuilder<Player, int?, QQueryOperations> cookingBonusProperty() {
    return addPropertyNameInternal('cookingBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> engineeringProperty() {
    return addPropertyNameInternal('engineering');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      engineeringMaxGearScoreBonusProperty() {
    return addPropertyNameInternal('engineeringMaxGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      engineeringMinGearScoreBonusProperty() {
    return addPropertyNameInternal('engineeringMinGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> furnishingProperty() {
    return addPropertyNameInternal('furnishing');
  }

  QueryBuilder<Player, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Player, int?, QQueryOperations> jewelcraftingProperty() {
    return addPropertyNameInternal('jewelcrafting');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      jewelcraftingMaxGearScoreBonusProperty() {
    return addPropertyNameInternal('jewelcraftingMaxGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      jewelcraftingMinGearScoreBonusProperty() {
    return addPropertyNameInternal('jewelcraftingMinGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> leatherworkingProperty() {
    return addPropertyNameInternal('leatherworking');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      leatherworkingRefiningBonusProperty() {
    return addPropertyNameInternal('leatherworkingRefiningBonus');
  }

  QueryBuilder<Player, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Player, String?, QQueryOperations> serverProperty() {
    return addPropertyNameInternal('server');
  }

  QueryBuilder<Player, int?, QQueryOperations> smeltingProperty() {
    return addPropertyNameInternal('smelting');
  }

  QueryBuilder<Player, int?, QQueryOperations> smeltingRefiningBonusProperty() {
    return addPropertyNameInternal('smeltingRefiningBonus');
  }

  QueryBuilder<Player, double?, QQueryOperations> stationTaxRateProperty() {
    return addPropertyNameInternal('stationTaxRate');
  }

  QueryBuilder<Player, int?, QQueryOperations> stonecuttingProperty() {
    return addPropertyNameInternal('stonecutting');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      stonecuttingRefiningBonusProperty() {
    return addPropertyNameInternal('stonecuttingRefiningBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      territoryRefiningBonusProperty() {
    return addPropertyNameInternal('territoryRefiningBonus');
  }

  QueryBuilder<Player, double?, QQueryOperations> tradingTaxRateProperty() {
    return addPropertyNameInternal('tradingTaxRate');
  }

  QueryBuilder<Player, int?, QQueryOperations> weaponsmithingProperty() {
    return addPropertyNameInternal('weaponsmithing');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      weaponsmithingMaxGearScoreBonusProperty() {
    return addPropertyNameInternal('weaponsmithingMaxGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      weaponsmithingMinGearScoreBonusProperty() {
    return addPropertyNameInternal('weaponsmithingMinGearScoreBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> weavingProperty() {
    return addPropertyNameInternal('weaving');
  }

  QueryBuilder<Player, int?, QQueryOperations> weavingRefiningBonusProperty() {
    return addPropertyNameInternal('weavingRefiningBonus');
  }

  QueryBuilder<Player, int?, QQueryOperations> woodworkingProperty() {
    return addPropertyNameInternal('woodworking');
  }

  QueryBuilder<Player, int?, QQueryOperations>
      woodworkingRefiningBonusProperty() {
    return addPropertyNameInternal('woodworkingRefiningBonus');
  }
}
