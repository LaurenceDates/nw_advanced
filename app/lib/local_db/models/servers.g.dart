// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servers.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetServerCollection on Isar {
  IsarCollection<Server> get servers => getCollection();
}

const ServerSchema = CollectionSchema(
  name: 'Server',
  schema:
      '{"name":"Server","idName":"id","properties":[{"name":"definitionFile","type":"String"},{"name":"name","type":"String"},{"name":"nwmpNo","type":"Long"},{"name":"region","type":"String"},{"name":"worldSet","type":"String"}],"indexes":[{"name":"definitionFile","unique":false,"properties":[{"name":"definitionFile","type":"Hash","caseSensitive":true}]},{"name":"name","unique":true,"properties":[{"name":"name","type":"Hash","caseSensitive":false}]},{"name":"nwmpNo","unique":true,"properties":[{"name":"nwmpNo","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'definitionFile': 0,
    'name': 1,
    'nwmpNo': 2,
    'region': 3,
    'worldSet': 4
  },
  listProperties: {},
  indexIds: {'definitionFile': 0, 'name': 1, 'nwmpNo': 2},
  indexValueTypes: {
    'definitionFile': [
      IndexValueType.stringHash,
    ],
    'name': [
      IndexValueType.stringHashCIS,
    ],
    'nwmpNo': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _serverGetId,
  setId: _serverSetId,
  getLinks: _serverGetLinks,
  attachLinks: _serverAttachLinks,
  serializeNative: _serverSerializeNative,
  deserializeNative: _serverDeserializeNative,
  deserializePropNative: _serverDeserializePropNative,
  serializeWeb: _serverSerializeWeb,
  deserializeWeb: _serverDeserializeWeb,
  deserializePropWeb: _serverDeserializePropWeb,
  version: 3,
);

int? _serverGetId(Server object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _serverSetId(Server object, int id) {
  object.id = id;
}

List<IsarLinkBase> _serverGetLinks(Server object) {
  return [];
}

void _serverSerializeNative(
    IsarCollection<Server> collection,
    IsarRawObject rawObj,
    Server object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.definitionFile;
  final _definitionFile = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_definitionFile.length) as int;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = object.nwmpNo;
  final _nwmpNo = value2;
  final value3 = object.region;
  final _region = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_region.length) as int;
  final value4 = object.worldSet;
  final _worldSet = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_worldSet.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _definitionFile);
  writer.writeBytes(offsets[1], _name);
  writer.writeLong(offsets[2], _nwmpNo);
  writer.writeBytes(offsets[3], _region);
  writer.writeBytes(offsets[4], _worldSet);
}

Server _serverDeserializeNative(IsarCollection<Server> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Server();
  object.definitionFile = reader.readString(offsets[0]);
  object.id = id;
  object.name = reader.readString(offsets[1]);
  object.nwmpNo = reader.readLong(offsets[2]);
  object.region = reader.readString(offsets[3]);
  object.worldSet = reader.readString(offsets[4]);
  return object;
}

P _serverDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _serverSerializeWeb(IsarCollection<Server> collection, Server object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'definitionFile', object.definitionFile);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'nwmpNo', object.nwmpNo);
  IsarNative.jsObjectSet(jsObj, 'region', object.region);
  IsarNative.jsObjectSet(jsObj, 'worldSet', object.worldSet);
  return jsObj;
}

Server _serverDeserializeWeb(IsarCollection<Server> collection, dynamic jsObj) {
  final object = Server();
  object.definitionFile = IsarNative.jsObjectGet(jsObj, 'definitionFile') ?? '';
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.nwmpNo =
      IsarNative.jsObjectGet(jsObj, 'nwmpNo') ?? double.negativeInfinity;
  object.region = IsarNative.jsObjectGet(jsObj, 'region') ?? '';
  object.worldSet = IsarNative.jsObjectGet(jsObj, 'worldSet') ?? '';
  return object;
}

P _serverDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'definitionFile':
      return (IsarNative.jsObjectGet(jsObj, 'definitionFile') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'nwmpNo':
      return (IsarNative.jsObjectGet(jsObj, 'nwmpNo') ??
          double.negativeInfinity) as P;
    case 'region':
      return (IsarNative.jsObjectGet(jsObj, 'region') ?? '') as P;
    case 'worldSet':
      return (IsarNative.jsObjectGet(jsObj, 'worldSet') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _serverAttachLinks(IsarCollection col, int id, Server object) {}

extension ServerByIndex on IsarCollection<Server> {
  Future<Server?> getByName(String name) {
    return getByIndex('name', [name]);
  }

  Server? getByNameSync(String name) {
    return getByIndexSync('name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex('name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync('name', [name]);
  }

  Future<List<Server?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex('name', values);
  }

  List<Server?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync('name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex('name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('name', values);
  }

  Future<Server?> getByNwmpNo(int nwmpNo) {
    return getByIndex('nwmpNo', [nwmpNo]);
  }

  Server? getByNwmpNoSync(int nwmpNo) {
    return getByIndexSync('nwmpNo', [nwmpNo]);
  }

  Future<bool> deleteByNwmpNo(int nwmpNo) {
    return deleteByIndex('nwmpNo', [nwmpNo]);
  }

  bool deleteByNwmpNoSync(int nwmpNo) {
    return deleteByIndexSync('nwmpNo', [nwmpNo]);
  }

  Future<List<Server?>> getAllByNwmpNo(List<int> nwmpNoValues) {
    final values = nwmpNoValues.map((e) => [e]).toList();
    return getAllByIndex('nwmpNo', values);
  }

  List<Server?> getAllByNwmpNoSync(List<int> nwmpNoValues) {
    final values = nwmpNoValues.map((e) => [e]).toList();
    return getAllByIndexSync('nwmpNo', values);
  }

  Future<int> deleteAllByNwmpNo(List<int> nwmpNoValues) {
    final values = nwmpNoValues.map((e) => [e]).toList();
    return deleteAllByIndex('nwmpNo', values);
  }

  int deleteAllByNwmpNoSync(List<int> nwmpNoValues) {
    final values = nwmpNoValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('nwmpNo', values);
  }
}

extension ServerQueryWhereSort on QueryBuilder<Server, Server, QWhere> {
  QueryBuilder<Server, Server, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Server, Server, QAfterWhere> anyDefinitionFile() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'definitionFile'));
  }

  QueryBuilder<Server, Server, QAfterWhere> anyName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'name'));
  }

  QueryBuilder<Server, Server, QAfterWhere> anyNwmpNo() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'nwmpNo'));
  }
}

extension ServerQueryWhere on QueryBuilder<Server, Server, QWhereClause> {
  QueryBuilder<Server, Server, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Server, Server, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Server, Server, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Server, Server, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Server, Server, QAfterWhereClause> idBetween(
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

  QueryBuilder<Server, Server, QAfterWhereClause> definitionFileEqualTo(
      String definitionFile) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'definitionFile',
      value: [definitionFile],
    ));
  }

  QueryBuilder<Server, Server, QAfterWhereClause> definitionFileNotEqualTo(
      String definitionFile) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'definitionFile',
        upper: [definitionFile],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'definitionFile',
        lower: [definitionFile],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'definitionFile',
        lower: [definitionFile],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'definitionFile',
        upper: [definitionFile],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nameEqualTo(String name) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'name',
      value: [name],
    ));
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nameNotEqualTo(String name) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nwmpNoEqualTo(int nwmpNo) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'nwmpNo',
      value: [nwmpNo],
    ));
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nwmpNoNotEqualTo(int nwmpNo) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'nwmpNo',
        upper: [nwmpNo],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'nwmpNo',
        lower: [nwmpNo],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'nwmpNo',
        lower: [nwmpNo],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'nwmpNo',
        upper: [nwmpNo],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nwmpNoGreaterThan(
    int nwmpNo, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'nwmpNo',
      lower: [nwmpNo],
      includeLower: include,
    ));
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nwmpNoLessThan(
    int nwmpNo, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'nwmpNo',
      upper: [nwmpNo],
      includeUpper: include,
    ));
  }

  QueryBuilder<Server, Server, QAfterWhereClause> nwmpNoBetween(
    int lowerNwmpNo,
    int upperNwmpNo, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'nwmpNo',
      lower: [lowerNwmpNo],
      includeLower: includeLower,
      upper: [upperNwmpNo],
      includeUpper: includeUpper,
    ));
  }
}

extension ServerQueryFilter on QueryBuilder<Server, Server, QFilterCondition> {
  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'definitionFile',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> definitionFileMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'definitionFile',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Server, Server, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> nwmpNoEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nwmpNo',
      value: value,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> nwmpNoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nwmpNo',
      value: value,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> nwmpNoLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nwmpNo',
      value: value,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> nwmpNoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nwmpNo',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'region',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'region',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'region',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'region',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'region',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'region',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'region',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> regionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'region',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'worldSet',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'worldSet',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'worldSet',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'worldSet',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'worldSet',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'worldSet',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'worldSet',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Server, Server, QAfterFilterCondition> worldSetMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'worldSet',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ServerQueryLinks on QueryBuilder<Server, Server, QFilterCondition> {}

extension ServerQueryWhereSortBy on QueryBuilder<Server, Server, QSortBy> {
  QueryBuilder<Server, Server, QAfterSortBy> sortByDefinitionFile() {
    return addSortByInternal('definitionFile', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByDefinitionFileDesc() {
    return addSortByInternal('definitionFile', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByNwmpNo() {
    return addSortByInternal('nwmpNo', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByNwmpNoDesc() {
    return addSortByInternal('nwmpNo', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByRegion() {
    return addSortByInternal('region', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByRegionDesc() {
    return addSortByInternal('region', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByWorldSet() {
    return addSortByInternal('worldSet', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> sortByWorldSetDesc() {
    return addSortByInternal('worldSet', Sort.desc);
  }
}

extension ServerQueryWhereSortThenBy
    on QueryBuilder<Server, Server, QSortThenBy> {
  QueryBuilder<Server, Server, QAfterSortBy> thenByDefinitionFile() {
    return addSortByInternal('definitionFile', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByDefinitionFileDesc() {
    return addSortByInternal('definitionFile', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByNwmpNo() {
    return addSortByInternal('nwmpNo', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByNwmpNoDesc() {
    return addSortByInternal('nwmpNo', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByRegion() {
    return addSortByInternal('region', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByRegionDesc() {
    return addSortByInternal('region', Sort.desc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByWorldSet() {
    return addSortByInternal('worldSet', Sort.asc);
  }

  QueryBuilder<Server, Server, QAfterSortBy> thenByWorldSetDesc() {
    return addSortByInternal('worldSet', Sort.desc);
  }
}

extension ServerQueryWhereDistinct on QueryBuilder<Server, Server, QDistinct> {
  QueryBuilder<Server, Server, QDistinct> distinctByDefinitionFile(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('definitionFile',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Server, Server, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Server, Server, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Server, Server, QDistinct> distinctByNwmpNo() {
    return addDistinctByInternal('nwmpNo');
  }

  QueryBuilder<Server, Server, QDistinct> distinctByRegion(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('region', caseSensitive: caseSensitive);
  }

  QueryBuilder<Server, Server, QDistinct> distinctByWorldSet(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('worldSet', caseSensitive: caseSensitive);
  }
}

extension ServerQueryProperty on QueryBuilder<Server, Server, QQueryProperty> {
  QueryBuilder<Server, String, QQueryOperations> definitionFileProperty() {
    return addPropertyNameInternal('definitionFile');
  }

  QueryBuilder<Server, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Server, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Server, int, QQueryOperations> nwmpNoProperty() {
    return addPropertyNameInternal('nwmpNo');
  }

  QueryBuilder<Server, String, QQueryOperations> regionProperty() {
    return addPropertyNameInternal('region');
  }

  QueryBuilder<Server, String, QQueryOperations> worldSetProperty() {
    return addPropertyNameInternal('worldSet');
  }
}
