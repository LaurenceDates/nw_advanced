// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetInfoCollection on Isar {
  IsarCollection<Info> get infos => getCollection();
}

const InfoSchema = CollectionSchema(
  name: 'Info',
  schema:
      '{"name":"Info","idName":"id","properties":[{"name":"body","type":"String"},{"name":"date","type":"Long"}],"indexes":[{"name":"date","unique":true,"properties":[{"name":"date","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {'body': 0, 'date': 1},
  listProperties: {},
  indexIds: {'date': 0},
  indexValueTypes: {
    'date': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _infoGetId,
  setId: _infoSetId,
  getLinks: _infoGetLinks,
  attachLinks: _infoAttachLinks,
  serializeNative: _infoSerializeNative,
  deserializeNative: _infoDeserializeNative,
  deserializePropNative: _infoDeserializePropNative,
  serializeWeb: _infoSerializeWeb,
  deserializeWeb: _infoDeserializeWeb,
  deserializePropWeb: _infoDeserializePropWeb,
  version: 3,
);

int? _infoGetId(Info object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _infoSetId(Info object, int id) {
  object.id = id;
}

List<IsarLinkBase> _infoGetLinks(Info object) {
  return [];
}

void _infoSerializeNative(IsarCollection<Info> collection, IsarRawObject rawObj,
    Info object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.body;
  final _body = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_body.length) as int;
  final value1 = object.date;
  final _date = value1;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _body);
  writer.writeLong(offsets[1], _date);
}

Info _infoDeserializeNative(IsarCollection<Info> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Info();
  object.body = reader.readString(offsets[0]);
  object.date = reader.readLong(offsets[1]);
  object.id = id;
  return object;
}

P _infoDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _infoSerializeWeb(IsarCollection<Info> collection, Info object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'body', object.body);
  IsarNative.jsObjectSet(jsObj, 'date', object.date);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  return jsObj;
}

Info _infoDeserializeWeb(IsarCollection<Info> collection, dynamic jsObj) {
  final object = Info();
  object.body = IsarNative.jsObjectGet(jsObj, 'body') ?? '';
  object.date =
      IsarNative.jsObjectGet(jsObj, 'date') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  return object;
}

P _infoDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'body':
      return (IsarNative.jsObjectGet(jsObj, 'body') ?? '') as P;
    case 'date':
      return (IsarNative.jsObjectGet(jsObj, 'date') ?? double.negativeInfinity)
          as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _infoAttachLinks(IsarCollection col, int id, Info object) {}

extension InfoByIndex on IsarCollection<Info> {
  Future<Info?> getByDate(int date) {
    return getByIndex('date', [date]);
  }

  Info? getByDateSync(int date) {
    return getByIndexSync('date', [date]);
  }

  Future<bool> deleteByDate(int date) {
    return deleteByIndex('date', [date]);
  }

  bool deleteByDateSync(int date) {
    return deleteByIndexSync('date', [date]);
  }

  Future<List<Info?>> getAllByDate(List<int> dateValues) {
    final values = dateValues.map((e) => [e]).toList();
    return getAllByIndex('date', values);
  }

  List<Info?> getAllByDateSync(List<int> dateValues) {
    final values = dateValues.map((e) => [e]).toList();
    return getAllByIndexSync('date', values);
  }

  Future<int> deleteAllByDate(List<int> dateValues) {
    final values = dateValues.map((e) => [e]).toList();
    return deleteAllByIndex('date', values);
  }

  int deleteAllByDateSync(List<int> dateValues) {
    final values = dateValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('date', values);
  }
}

extension InfoQueryWhereSort on QueryBuilder<Info, Info, QWhere> {
  QueryBuilder<Info, Info, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Info, Info, QAfterWhere> anyDate() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'date'));
  }
}

extension InfoQueryWhere on QueryBuilder<Info, Info, QWhereClause> {
  QueryBuilder<Info, Info, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Info, Info, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Info, Info, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Info, Info, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Info, Info, QAfterWhereClause> idBetween(
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

  QueryBuilder<Info, Info, QAfterWhereClause> dateEqualTo(int date) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'date',
      value: [date],
    ));
  }

  QueryBuilder<Info, Info, QAfterWhereClause> dateNotEqualTo(int date) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'date',
        upper: [date],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'date',
        lower: [date],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'date',
        lower: [date],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'date',
        upper: [date],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Info, Info, QAfterWhereClause> dateGreaterThan(
    int date, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'date',
      lower: [date],
      includeLower: include,
    ));
  }

  QueryBuilder<Info, Info, QAfterWhereClause> dateLessThan(
    int date, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'date',
      upper: [date],
      includeUpper: include,
    ));
  }

  QueryBuilder<Info, Info, QAfterWhereClause> dateBetween(
    int lowerDate,
    int upperDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'date',
      lower: [lowerDate],
      includeLower: includeLower,
      upper: [upperDate],
      includeUpper: includeUpper,
    ));
  }
}

extension InfoQueryFilter on QueryBuilder<Info, Info, QFilterCondition> {
  QueryBuilder<Info, Info, QAfterFilterCondition> bodyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'body',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> bodyMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'body',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> dateEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> dateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> dateLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> dateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'date',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Info, Info, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Info, Info, QAfterFilterCondition> idBetween(
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
}

extension InfoQueryLinks on QueryBuilder<Info, Info, QFilterCondition> {}

extension InfoQueryWhereSortBy on QueryBuilder<Info, Info, QSortBy> {
  QueryBuilder<Info, Info, QAfterSortBy> sortByBody() {
    return addSortByInternal('body', Sort.asc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByBodyDesc() {
    return addSortByInternal('body', Sort.desc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension InfoQueryWhereSortThenBy on QueryBuilder<Info, Info, QSortThenBy> {
  QueryBuilder<Info, Info, QAfterSortBy> thenByBody() {
    return addSortByInternal('body', Sort.asc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByBodyDesc() {
    return addSortByInternal('body', Sort.desc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension InfoQueryWhereDistinct on QueryBuilder<Info, Info, QDistinct> {
  QueryBuilder<Info, Info, QDistinct> distinctByBody(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('body', caseSensitive: caseSensitive);
  }

  QueryBuilder<Info, Info, QDistinct> distinctByDate() {
    return addDistinctByInternal('date');
  }

  QueryBuilder<Info, Info, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension InfoQueryProperty on QueryBuilder<Info, Info, QQueryProperty> {
  QueryBuilder<Info, String, QQueryOperations> bodyProperty() {
    return addPropertyNameInternal('body');
  }

  QueryBuilder<Info, int, QQueryOperations> dateProperty() {
    return addPropertyNameInternal('date');
  }

  QueryBuilder<Info, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}
