// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_recipes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetCalculatedRecipeCollection on Isar {
  IsarCollection<CalculatedRecipe> get calculatedRecipes => getCollection();
}

const CalculatedRecipeSchema = CollectionSchema(
  name: 'CalculatedRecipe',
  schema:
      '{"name":"CalculatedRecipe","idName":"id","properties":[{"name":"cost","type":"Double"},{"name":"craftedItemId","type":"String"},{"name":"craftedItemName","type":"String"},{"name":"hash","type":"Long"},{"name":"ingredients","type":"String"},{"name":"playerIsarId","type":"Long"},{"name":"serverId","type":"Long"}],"indexes":[{"name":"hash","unique":true,"properties":[{"name":"hash","type":"Value","caseSensitive":false}]},{"name":"serverId_playerIsarId_craftedItemId","unique":false,"properties":[{"name":"serverId","type":"Value","caseSensitive":false},{"name":"playerIsarId","type":"Value","caseSensitive":false},{"name":"craftedItemId","type":"Hash","caseSensitive":false}]},{"name":"serverId_playerIsarId_craftedItemName","unique":false,"properties":[{"name":"serverId","type":"Value","caseSensitive":false},{"name":"playerIsarId","type":"Value","caseSensitive":false},{"name":"craftedItemName","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'cost': 0,
    'craftedItemId': 1,
    'craftedItemName': 2,
    'hash': 3,
    'ingredients': 4,
    'playerIsarId': 5,
    'serverId': 6
  },
  listProperties: {},
  indexIds: {
    'hash': 0,
    'serverId_playerIsarId_craftedItemId': 1,
    'serverId_playerIsarId_craftedItemName': 2
  },
  indexValueTypes: {
    'hash': [
      IndexValueType.long,
    ],
    'serverId_playerIsarId_craftedItemId': [
      IndexValueType.long,
      IndexValueType.long,
      IndexValueType.stringHashCIS,
    ],
    'serverId_playerIsarId_craftedItemName': [
      IndexValueType.long,
      IndexValueType.long,
      IndexValueType.stringCIS,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _calculatedRecipeGetId,
  setId: _calculatedRecipeSetId,
  getLinks: _calculatedRecipeGetLinks,
  attachLinks: _calculatedRecipeAttachLinks,
  serializeNative: _calculatedRecipeSerializeNative,
  deserializeNative: _calculatedRecipeDeserializeNative,
  deserializePropNative: _calculatedRecipeDeserializePropNative,
  serializeWeb: _calculatedRecipeSerializeWeb,
  deserializeWeb: _calculatedRecipeDeserializeWeb,
  deserializePropWeb: _calculatedRecipeDeserializePropWeb,
  version: 3,
);

int? _calculatedRecipeGetId(CalculatedRecipe object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _calculatedRecipeSetId(CalculatedRecipe object, int id) {
  object.id = id;
}

List<IsarLinkBase> _calculatedRecipeGetLinks(CalculatedRecipe object) {
  return [];
}

const _calculatedRecipeCalculatedRecipeIngredientConverter =
    CalculatedRecipeIngredientConverter();

void _calculatedRecipeSerializeNative(
    IsarCollection<CalculatedRecipe> collection,
    IsarRawObject rawObj,
    CalculatedRecipe object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.cost;
  final _cost = value0;
  final value1 = object.craftedItemId;
  final _craftedItemId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_craftedItemId.length) as int;
  final value2 = object.craftedItemName;
  final _craftedItemName = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_craftedItemName.length) as int;
  final value3 = object.hash;
  final _hash = value3;
  final value4 = _calculatedRecipeCalculatedRecipeIngredientConverter
      .toIsar(object.ingredients);
  final _ingredients = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_ingredients.length) as int;
  final value5 = object.playerIsarId;
  final _playerIsarId = value5;
  final value6 = object.serverId;
  final _serverId = value6;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _cost);
  writer.writeBytes(offsets[1], _craftedItemId);
  writer.writeBytes(offsets[2], _craftedItemName);
  writer.writeLong(offsets[3], _hash);
  writer.writeBytes(offsets[4], _ingredients);
  writer.writeLong(offsets[5], _playerIsarId);
  writer.writeLong(offsets[6], _serverId);
}

CalculatedRecipe _calculatedRecipeDeserializeNative(
    IsarCollection<CalculatedRecipe> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = CalculatedRecipe();
  object.cost = reader.readDouble(offsets[0]);
  object.craftedItemId = reader.readString(offsets[1]);
  object.craftedItemName = reader.readString(offsets[2]);
  object.hash = reader.readLong(offsets[3]);
  object.id = id;
  object.ingredients = _calculatedRecipeCalculatedRecipeIngredientConverter
      .fromIsar(reader.readString(offsets[4]));
  object.playerIsarId = reader.readLongOrNull(offsets[5]);
  object.serverId = reader.readLong(offsets[6]);
  return object;
}

P _calculatedRecipeDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (_calculatedRecipeCalculatedRecipeIngredientConverter
          .fromIsar(reader.readString(offset))) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _calculatedRecipeSerializeWeb(
    IsarCollection<CalculatedRecipe> collection, CalculatedRecipe object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'cost', object.cost);
  IsarNative.jsObjectSet(jsObj, 'craftedItemId', object.craftedItemId);
  IsarNative.jsObjectSet(jsObj, 'craftedItemName', object.craftedItemName);
  IsarNative.jsObjectSet(jsObj, 'hash', object.hash);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj,
      'ingredients',
      _calculatedRecipeCalculatedRecipeIngredientConverter
          .toIsar(object.ingredients));
  IsarNative.jsObjectSet(jsObj, 'playerIsarId', object.playerIsarId);
  IsarNative.jsObjectSet(jsObj, 'serverId', object.serverId);
  return jsObj;
}

CalculatedRecipe _calculatedRecipeDeserializeWeb(
    IsarCollection<CalculatedRecipe> collection, dynamic jsObj) {
  final object = CalculatedRecipe();
  object.cost =
      IsarNative.jsObjectGet(jsObj, 'cost') ?? double.negativeInfinity;
  object.craftedItemId = IsarNative.jsObjectGet(jsObj, 'craftedItemId') ?? '';
  object.craftedItemName =
      IsarNative.jsObjectGet(jsObj, 'craftedItemName') ?? '';
  object.hash =
      IsarNative.jsObjectGet(jsObj, 'hash') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.ingredients = _calculatedRecipeCalculatedRecipeIngredientConverter
      .fromIsar(IsarNative.jsObjectGet(jsObj, 'ingredients') ?? '');
  object.playerIsarId = IsarNative.jsObjectGet(jsObj, 'playerIsarId');
  object.serverId =
      IsarNative.jsObjectGet(jsObj, 'serverId') ?? double.negativeInfinity;
  return object;
}

P _calculatedRecipeDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'cost':
      return (IsarNative.jsObjectGet(jsObj, 'cost') ?? double.negativeInfinity)
          as P;
    case 'craftedItemId':
      return (IsarNative.jsObjectGet(jsObj, 'craftedItemId') ?? '') as P;
    case 'craftedItemName':
      return (IsarNative.jsObjectGet(jsObj, 'craftedItemName') ?? '') as P;
    case 'hash':
      return (IsarNative.jsObjectGet(jsObj, 'hash') ?? double.negativeInfinity)
          as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'ingredients':
      return (_calculatedRecipeCalculatedRecipeIngredientConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'ingredients') ?? '')) as P;
    case 'playerIsarId':
      return (IsarNative.jsObjectGet(jsObj, 'playerIsarId')) as P;
    case 'serverId':
      return (IsarNative.jsObjectGet(jsObj, 'serverId') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _calculatedRecipeAttachLinks(
    IsarCollection col, int id, CalculatedRecipe object) {}

extension CalculatedRecipeByIndex on IsarCollection<CalculatedRecipe> {
  Future<CalculatedRecipe?> getByHash(int hash) {
    return getByIndex('hash', [hash]);
  }

  CalculatedRecipe? getByHashSync(int hash) {
    return getByIndexSync('hash', [hash]);
  }

  Future<bool> deleteByHash(int hash) {
    return deleteByIndex('hash', [hash]);
  }

  bool deleteByHashSync(int hash) {
    return deleteByIndexSync('hash', [hash]);
  }

  Future<List<CalculatedRecipe?>> getAllByHash(List<int> hashValues) {
    final values = hashValues.map((e) => [e]).toList();
    return getAllByIndex('hash', values);
  }

  List<CalculatedRecipe?> getAllByHashSync(List<int> hashValues) {
    final values = hashValues.map((e) => [e]).toList();
    return getAllByIndexSync('hash', values);
  }

  Future<int> deleteAllByHash(List<int> hashValues) {
    final values = hashValues.map((e) => [e]).toList();
    return deleteAllByIndex('hash', values);
  }

  int deleteAllByHashSync(List<int> hashValues) {
    final values = hashValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('hash', values);
  }
}

extension CalculatedRecipeQueryWhereSort
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QWhere> {
  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhere> anyHash() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'hash'));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhere>
      anyServerIdPlayerIsarIdCraftedItemId() {
    return addWhereClauseInternal(const IndexWhereClause.any(
        indexName: 'serverId_playerIsarId_craftedItemId'));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhere>
      anyServerIdPlayerIsarIdCraftedItemName() {
    return addWhereClauseInternal(const IndexWhereClause.any(
        indexName: 'serverId_playerIsarId_craftedItemName'));
  }
}

extension CalculatedRecipeQueryWhere
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QWhereClause> {
  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      idNotEqualTo(int id) {
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

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause> idBetween(
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

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      hashEqualTo(int hash) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'hash',
      value: [hash],
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      hashNotEqualTo(int hash) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'hash',
        upper: [hash],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'hash',
        lower: [hash],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'hash',
        lower: [hash],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'hash',
        upper: [hash],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      hashGreaterThan(
    int hash, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'hash',
      lower: [hash],
      includeLower: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      hashLessThan(
    int hash, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'hash',
      upper: [hash],
      includeUpper: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      hashBetween(
    int lowerHash,
    int upperHash, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'hash',
      lower: [lowerHash],
      includeLower: includeLower,
      upper: [upperHash],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdEqualTo(int serverId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_playerIsarId_craftedItemId',
      value: [serverId],
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdNotEqualTo(int serverId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        upper: [serverId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        lower: [serverId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        lower: [serverId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        upper: [serverId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdGreaterThan(
    int serverId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'serverId_playerIsarId_craftedItemId',
      lower: [serverId],
      includeLower: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdLessThan(
    int serverId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'serverId_playerIsarId_craftedItemId',
      upper: [serverId],
      includeUpper: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdBetween(
    int lowerServerId,
    int upperServerId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_playerIsarId_craftedItemId',
      lower: [lowerServerId],
      includeLower: includeLower,
      upper: [upperServerId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdEqualTo(int serverId, int? playerIsarId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_playerIsarId_craftedItemId',
      value: [serverId, playerIsarId],
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdNotEqualTo(int serverId, int? playerIsarId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        upper: [serverId, playerIsarId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        lower: [serverId, playerIsarId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        lower: [serverId, playerIsarId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        upper: [serverId, playerIsarId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdEqualToPlayerIsarIdGreaterThan(
    int serverId,
    int? playerIsarId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'serverId_playerIsarId_craftedItemId',
      lower: [serverId, playerIsarId],
      includeLower: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdEqualToPlayerIsarIdLessThan(
    int serverId,
    int? playerIsarId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'serverId_playerIsarId_craftedItemId',
      upper: [serverId, playerIsarId],
      includeUpper: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdEqualToPlayerIsarIdBetween(
    int serverId,
    int? lowerPlayerIsarId,
    int? upperPlayerIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_playerIsarId_craftedItemId',
      lower: [serverId, lowerPlayerIsarId],
      includeLower: includeLower,
      upper: [serverId, upperPlayerIsarId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdCraftedItemIdEqualTo(
          int serverId, int? playerIsarId, String craftedItemId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_playerIsarId_craftedItemId',
      value: [serverId, playerIsarId, craftedItemId],
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdCraftedItemIdNotEqualTo(
          int serverId, int? playerIsarId, String craftedItemId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        upper: [serverId, playerIsarId, craftedItemId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        lower: [serverId, playerIsarId, craftedItemId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        lower: [serverId, playerIsarId, craftedItemId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemId',
        upper: [serverId, playerIsarId, craftedItemId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdCraftedItemNameEqualTo(
          int serverId, int? playerIsarId, String craftedItemName) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_playerIsarId_craftedItemName',
      value: [serverId, playerIsarId, craftedItemName],
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdCraftedItemNameNotEqualTo(
          int serverId, int? playerIsarId, String craftedItemName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemName',
        upper: [serverId, playerIsarId, craftedItemName],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemName',
        lower: [serverId, playerIsarId, craftedItemName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_playerIsarId_craftedItemName',
        lower: [serverId, playerIsarId, craftedItemName],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_playerIsarId_craftedItemName',
        upper: [serverId, playerIsarId, craftedItemName],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdEqualToCraftedItemNameGreaterThan(
    int serverId,
    int? playerIsarId,
    String craftedItemName, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'serverId_playerIsarId_craftedItemName',
      lower: [serverId, playerIsarId, craftedItemName],
      includeLower: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdEqualToCraftedItemNameLessThan(
    int serverId,
    int? playerIsarId,
    String craftedItemName, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'serverId_playerIsarId_craftedItemName',
      upper: [serverId, playerIsarId, craftedItemName],
      includeUpper: include,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdEqualToCraftedItemNameBetween(
    int serverId,
    int? playerIsarId,
    String lowerCraftedItemName,
    String upperCraftedItemName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_playerIsarId_craftedItemName',
      lower: [serverId, playerIsarId, lowerCraftedItemName],
      includeLower: includeLower,
      upper: [serverId, playerIsarId, upperCraftedItemName],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterWhereClause>
      serverIdPlayerIsarIdEqualToCraftedItemNameStartsWith(
          int serverId, int? playerIsarId, String CraftedItemNamePrefix) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_playerIsarId_craftedItemName',
      lower: [serverId, playerIsarId, CraftedItemNamePrefix],
      includeLower: true,
      upper: [serverId, playerIsarId, '$CraftedItemNamePrefix\u{FFFFF}'],
      includeUpper: true,
    ));
  }
}

extension CalculatedRecipeQueryFilter
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QFilterCondition> {
  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      costGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'cost',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      costLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'cost',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      costBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'cost',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'craftedItemId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'craftedItemId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'craftedItemName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      craftedItemNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'craftedItemName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      hashEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hash',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      hashGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hash',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      hashLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hash',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      hashBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hash',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsEqualTo(
    List<CalculatedRecipeIngredient> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ingredients',
      value: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsGreaterThan(
    List<CalculatedRecipeIngredient> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ingredients',
      value: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsLessThan(
    List<CalculatedRecipeIngredient> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ingredients',
      value: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsBetween(
    List<CalculatedRecipeIngredient> lower,
    List<CalculatedRecipeIngredient> upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ingredients',
      lower: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsStartsWith(
    List<CalculatedRecipeIngredient> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'ingredients',
      value: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsEndsWith(
    List<CalculatedRecipeIngredient> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'ingredients',
      value: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsContains(List<CalculatedRecipeIngredient> value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'ingredients',
      value: _calculatedRecipeCalculatedRecipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      ingredientsMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'ingredients',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      playerIsarIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'playerIsarId',
      value: null,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      playerIsarIdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'playerIsarId',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      playerIsarIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'playerIsarId',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      playerIsarIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'playerIsarId',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      playerIsarIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'playerIsarId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      serverIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'serverId',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      serverIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'serverId',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      serverIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'serverId',
      value: value,
    ));
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterFilterCondition>
      serverIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'serverId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension CalculatedRecipeQueryLinks
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QFilterCondition> {}

extension CalculatedRecipeQueryWhereSortBy
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QSortBy> {
  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy> sortByCost() {
    return addSortByInternal('cost', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByCostDesc() {
    return addSortByInternal('cost', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByCraftedItemId() {
    return addSortByInternal('craftedItemId', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByCraftedItemIdDesc() {
    return addSortByInternal('craftedItemId', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByCraftedItemName() {
    return addSortByInternal('craftedItemName', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByCraftedItemNameDesc() {
    return addSortByInternal('craftedItemName', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy> sortByHash() {
    return addSortByInternal('hash', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByHashDesc() {
    return addSortByInternal('hash', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByIngredients() {
    return addSortByInternal('ingredients', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByIngredientsDesc() {
    return addSortByInternal('ingredients', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByPlayerIsarId() {
    return addSortByInternal('playerIsarId', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByPlayerIsarIdDesc() {
    return addSortByInternal('playerIsarId', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByServerId() {
    return addSortByInternal('serverId', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      sortByServerIdDesc() {
    return addSortByInternal('serverId', Sort.desc);
  }
}

extension CalculatedRecipeQueryWhereSortThenBy
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QSortThenBy> {
  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy> thenByCost() {
    return addSortByInternal('cost', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByCostDesc() {
    return addSortByInternal('cost', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByCraftedItemId() {
    return addSortByInternal('craftedItemId', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByCraftedItemIdDesc() {
    return addSortByInternal('craftedItemId', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByCraftedItemName() {
    return addSortByInternal('craftedItemName', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByCraftedItemNameDesc() {
    return addSortByInternal('craftedItemName', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy> thenByHash() {
    return addSortByInternal('hash', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByHashDesc() {
    return addSortByInternal('hash', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByIngredients() {
    return addSortByInternal('ingredients', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByIngredientsDesc() {
    return addSortByInternal('ingredients', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByPlayerIsarId() {
    return addSortByInternal('playerIsarId', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByPlayerIsarIdDesc() {
    return addSortByInternal('playerIsarId', Sort.desc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByServerId() {
    return addSortByInternal('serverId', Sort.asc);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QAfterSortBy>
      thenByServerIdDesc() {
    return addSortByInternal('serverId', Sort.desc);
  }
}

extension CalculatedRecipeQueryWhereDistinct
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct> {
  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct> distinctByCost() {
    return addDistinctByInternal('cost');
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct>
      distinctByCraftedItemId({bool caseSensitive = true}) {
    return addDistinctByInternal('craftedItemId', caseSensitive: caseSensitive);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct>
      distinctByCraftedItemName({bool caseSensitive = true}) {
    return addDistinctByInternal('craftedItemName',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct> distinctByHash() {
    return addDistinctByInternal('hash');
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct>
      distinctByIngredients({bool caseSensitive = true}) {
    return addDistinctByInternal('ingredients', caseSensitive: caseSensitive);
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct>
      distinctByPlayerIsarId() {
    return addDistinctByInternal('playerIsarId');
  }

  QueryBuilder<CalculatedRecipe, CalculatedRecipe, QDistinct>
      distinctByServerId() {
    return addDistinctByInternal('serverId');
  }
}

extension CalculatedRecipeQueryProperty
    on QueryBuilder<CalculatedRecipe, CalculatedRecipe, QQueryProperty> {
  QueryBuilder<CalculatedRecipe, double, QQueryOperations> costProperty() {
    return addPropertyNameInternal('cost');
  }

  QueryBuilder<CalculatedRecipe, String, QQueryOperations>
      craftedItemIdProperty() {
    return addPropertyNameInternal('craftedItemId');
  }

  QueryBuilder<CalculatedRecipe, String, QQueryOperations>
      craftedItemNameProperty() {
    return addPropertyNameInternal('craftedItemName');
  }

  QueryBuilder<CalculatedRecipe, int, QQueryOperations> hashProperty() {
    return addPropertyNameInternal('hash');
  }

  QueryBuilder<CalculatedRecipe, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<CalculatedRecipe, List<CalculatedRecipeIngredient>,
      QQueryOperations> ingredientsProperty() {
    return addPropertyNameInternal('ingredients');
  }

  QueryBuilder<CalculatedRecipe, int?, QQueryOperations>
      playerIsarIdProperty() {
    return addPropertyNameInternal('playerIsarId');
  }

  QueryBuilder<CalculatedRecipe, int, QQueryOperations> serverIdProperty() {
    return addPropertyNameInternal('serverId');
  }
}
