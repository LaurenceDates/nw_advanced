// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetItemCollection on Isar {
  IsarCollection<Item> get items => getCollection();
}

const ItemSchema = CollectionSchema(
  name: 'Item',
  schema:
      '{"name":"Item","idName":"id","properties":[{"name":"definitionFile","type":"String"},{"name":"itemId","type":"String"},{"name":"itemName","type":"String"},{"name":"rarity","type":"Long"},{"name":"tier","type":"Long"},{"name":"types","type":"StringList"}],"indexes":[{"name":"definitionFile","unique":false,"properties":[{"name":"definitionFile","type":"Hash","caseSensitive":true}]},{"name":"itemId","unique":true,"properties":[{"name":"itemId","type":"Hash","caseSensitive":true}]},{"name":"types","unique":false,"properties":[{"name":"types","type":"HashElements","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'definitionFile': 0,
    'itemId': 1,
    'itemName': 2,
    'rarity': 3,
    'tier': 4,
    'types': 5
  },
  listProperties: {'types'},
  indexIds: {'definitionFile': 0, 'itemId': 1, 'types': 2},
  indexValueTypes: {
    'definitionFile': [
      IndexValueType.stringHash,
    ],
    'itemId': [
      IndexValueType.stringHash,
    ],
    'types': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {'prices': 0},
  backlinkLinkNames: {'prices': 'item'},
  getId: _itemGetId,
  setId: _itemSetId,
  getLinks: _itemGetLinks,
  attachLinks: _itemAttachLinks,
  serializeNative: _itemSerializeNative,
  deserializeNative: _itemDeserializeNative,
  deserializePropNative: _itemDeserializePropNative,
  serializeWeb: _itemSerializeWeb,
  deserializeWeb: _itemDeserializeWeb,
  deserializePropWeb: _itemDeserializePropWeb,
  version: 3,
);

int? _itemGetId(Item object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _itemSetId(Item object, int id) {
  object.id = id;
}

List<IsarLinkBase> _itemGetLinks(Item object) {
  return [object.prices];
}

void _itemSerializeNative(IsarCollection<Item> collection, IsarRawObject rawObj,
    Item object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.definitionFile;
  IsarUint8List? _definitionFile;
  if (value0 != null) {
    _definitionFile = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_definitionFile?.length ?? 0) as int;
  final value1 = object.itemId;
  final _itemId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_itemId.length) as int;
  final value2 = object.itemName;
  final _itemName = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_itemName.length) as int;
  final value3 = object.rarity;
  final _rarity = value3;
  final value4 = object.tier;
  final _tier = value4;
  final value5 = object.types;
  dynamicSize += (value5?.length ?? 0) * 8;
  List<IsarUint8List?>? bytesList5;
  if (value5 != null) {
    bytesList5 = [];
    for (var str in value5) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      bytesList5.add(bytes);
      dynamicSize += bytes.length as int;
    }
  }
  final _types = bytesList5;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _definitionFile);
  writer.writeBytes(offsets[1], _itemId);
  writer.writeBytes(offsets[2], _itemName);
  writer.writeLong(offsets[3], _rarity);
  writer.writeLong(offsets[4], _tier);
  writer.writeStringList(offsets[5], _types);
}

Item _itemDeserializeNative(IsarCollection<Item> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Item();
  object.definitionFile = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.itemId = reader.readString(offsets[1]);
  object.itemName = reader.readString(offsets[2]);
  object.rarity = reader.readLongOrNull(offsets[3]);
  object.tier = reader.readLongOrNull(offsets[4]);
  object.types = reader.readStringList(offsets[5]);
  _itemAttachLinks(collection, id, object);
  return object;
}

P _itemDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringList(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _itemSerializeWeb(IsarCollection<Item> collection, Item object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'definitionFile', object.definitionFile);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'itemId', object.itemId);
  IsarNative.jsObjectSet(jsObj, 'itemName', object.itemName);
  IsarNative.jsObjectSet(jsObj, 'rarity', object.rarity);
  IsarNative.jsObjectSet(jsObj, 'tier', object.tier);
  IsarNative.jsObjectSet(jsObj, 'types', object.types);
  return jsObj;
}

Item _itemDeserializeWeb(IsarCollection<Item> collection, dynamic jsObj) {
  final object = Item();
  object.definitionFile = IsarNative.jsObjectGet(jsObj, 'definitionFile');
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.itemId = IsarNative.jsObjectGet(jsObj, 'itemId') ?? '';
  object.itemName = IsarNative.jsObjectGet(jsObj, 'itemName') ?? '';
  object.rarity = IsarNative.jsObjectGet(jsObj, 'rarity');
  object.tier = IsarNative.jsObjectGet(jsObj, 'tier');
  object.types = (IsarNative.jsObjectGet(jsObj, 'types') as List?)
      ?.map((e) => e ?? '')
      .toList()
      .cast<String>();
  _itemAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _itemDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'definitionFile':
      return (IsarNative.jsObjectGet(jsObj, 'definitionFile')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'itemId':
      return (IsarNative.jsObjectGet(jsObj, 'itemId') ?? '') as P;
    case 'itemName':
      return (IsarNative.jsObjectGet(jsObj, 'itemName') ?? '') as P;
    case 'rarity':
      return (IsarNative.jsObjectGet(jsObj, 'rarity')) as P;
    case 'tier':
      return (IsarNative.jsObjectGet(jsObj, 'tier')) as P;
    case 'types':
      return ((IsarNative.jsObjectGet(jsObj, 'types') as List?)
          ?.map((e) => e ?? '')
          .toList()
          .cast<String>()) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _itemAttachLinks(IsarCollection col, int id, Item object) {
  object.prices.attach(col, col.isar.prices, 'prices', id);
}

extension ItemByIndex on IsarCollection<Item> {
  Future<Item?> getByItemId(String itemId) {
    return getByIndex('itemId', [itemId]);
  }

  Item? getByItemIdSync(String itemId) {
    return getByIndexSync('itemId', [itemId]);
  }

  Future<bool> deleteByItemId(String itemId) {
    return deleteByIndex('itemId', [itemId]);
  }

  bool deleteByItemIdSync(String itemId) {
    return deleteByIndexSync('itemId', [itemId]);
  }

  Future<List<Item?>> getAllByItemId(List<String> itemIdValues) {
    final values = itemIdValues.map((e) => [e]).toList();
    return getAllByIndex('itemId', values);
  }

  List<Item?> getAllByItemIdSync(List<String> itemIdValues) {
    final values = itemIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('itemId', values);
  }

  Future<int> deleteAllByItemId(List<String> itemIdValues) {
    final values = itemIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('itemId', values);
  }

  int deleteAllByItemIdSync(List<String> itemIdValues) {
    final values = itemIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('itemId', values);
  }
}

extension ItemQueryWhereSort on QueryBuilder<Item, Item, QWhere> {
  QueryBuilder<Item, Item, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Item, Item, QAfterWhere> anyDefinitionFile() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'definitionFile'));
  }

  QueryBuilder<Item, Item, QAfterWhere> anyItemId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'itemId'));
  }

  QueryBuilder<Item, Item, QAfterWhere> anyTypesAny() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'types'));
  }
}

extension ItemQueryWhere on QueryBuilder<Item, Item, QWhereClause> {
  QueryBuilder<Item, Item, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Item, Item, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idBetween(
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

  QueryBuilder<Item, Item, QAfterWhereClause> definitionFileEqualTo(
      String? definitionFile) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'definitionFile',
      value: [definitionFile],
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> definitionFileNotEqualTo(
      String? definitionFile) {
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

  QueryBuilder<Item, Item, QAfterWhereClause> definitionFileIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'definitionFile',
      value: [null],
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> definitionFileIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'definitionFile',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> itemIdEqualTo(String itemId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'itemId',
      value: [itemId],
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> itemIdNotEqualTo(String itemId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'itemId',
        upper: [itemId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'itemId',
        lower: [itemId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'itemId',
        lower: [itemId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'itemId',
        upper: [itemId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyEqualTo(
      String? typesElement) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'types',
      value: [typesElement],
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyNotEqualTo(
      String? typesElement) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'types',
        upper: [typesElement],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'types',
        lower: [typesElement],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'types',
        lower: [typesElement],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'types',
        upper: [typesElement],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'types',
      value: [null],
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'types',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyGreaterThan(
    String? typesElement, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'types',
      lower: [typesElement],
      includeLower: include,
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyLessThan(
    String? typesElement, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'types',
      upper: [typesElement],
      includeUpper: include,
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyBetween(
    String? lowerTypesElement,
    String? upperTypesElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'types',
      lower: [lowerTypesElement],
      includeLower: includeLower,
      upper: [upperTypesElement],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Item, Item, QAfterWhereClause> typesAnyStartsWith(
      String? TypesElementPrefix) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'types',
      lower: [TypesElementPrefix],
      includeLower: true,
      upper: ['$TypesElementPrefix\u{FFFFF}'],
      includeUpper: true,
    ));
  }
}

extension ItemQueryFilter on QueryBuilder<Item, Item, QFilterCondition> {
  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'definitionFile',
      value: null,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileGreaterThan(
    String? value, {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileLessThan(
    String? value, {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileStartsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileEndsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> definitionFileMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'definitionFile',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> rarityIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'rarity',
      value: null,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> rarityEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'rarity',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> rarityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'rarity',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> rarityLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'rarity',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> rarityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rarity',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> tierIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'tier',
      value: null,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> tierEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'tier',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> tierGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'tier',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> tierLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'tier',
      value: value,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> tierBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tier',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'types',
      value: null,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'types',
      value: null,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'types',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'types',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'types',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'types',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'types',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'types',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'types',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> typesAnyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'types',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ItemQueryLinks on QueryBuilder<Item, Item, QFilterCondition> {
  QueryBuilder<Item, Item, QAfterFilterCondition> prices(FilterQuery<Price> q) {
    return linkInternal(
      isar.prices,
      q,
      'prices',
    );
  }
}

extension ItemQueryWhereSortBy on QueryBuilder<Item, Item, QSortBy> {
  QueryBuilder<Item, Item, QAfterSortBy> sortByDefinitionFile() {
    return addSortByInternal('definitionFile', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByDefinitionFileDesc() {
    return addSortByInternal('definitionFile', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemName() {
    return addSortByInternal('itemName', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemNameDesc() {
    return addSortByInternal('itemName', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByRarity() {
    return addSortByInternal('rarity', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByRarityDesc() {
    return addSortByInternal('rarity', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByTier() {
    return addSortByInternal('tier', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByTierDesc() {
    return addSortByInternal('tier', Sort.desc);
  }
}

extension ItemQueryWhereSortThenBy on QueryBuilder<Item, Item, QSortThenBy> {
  QueryBuilder<Item, Item, QAfterSortBy> thenByDefinitionFile() {
    return addSortByInternal('definitionFile', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByDefinitionFileDesc() {
    return addSortByInternal('definitionFile', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemName() {
    return addSortByInternal('itemName', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemNameDesc() {
    return addSortByInternal('itemName', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByRarity() {
    return addSortByInternal('rarity', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByRarityDesc() {
    return addSortByInternal('rarity', Sort.desc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByTier() {
    return addSortByInternal('tier', Sort.asc);
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByTierDesc() {
    return addSortByInternal('tier', Sort.desc);
  }
}

extension ItemQueryWhereDistinct on QueryBuilder<Item, Item, QDistinct> {
  QueryBuilder<Item, Item, QDistinct> distinctByDefinitionFile(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('definitionFile',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Item, Item, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Item, Item, QDistinct> distinctByItemId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Item, Item, QDistinct> distinctByItemName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Item, Item, QDistinct> distinctByRarity() {
    return addDistinctByInternal('rarity');
  }

  QueryBuilder<Item, Item, QDistinct> distinctByTier() {
    return addDistinctByInternal('tier');
  }
}

extension ItemQueryProperty on QueryBuilder<Item, Item, QQueryProperty> {
  QueryBuilder<Item, String?, QQueryOperations> definitionFileProperty() {
    return addPropertyNameInternal('definitionFile');
  }

  QueryBuilder<Item, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Item, String, QQueryOperations> itemIdProperty() {
    return addPropertyNameInternal('itemId');
  }

  QueryBuilder<Item, String, QQueryOperations> itemNameProperty() {
    return addPropertyNameInternal('itemName');
  }

  QueryBuilder<Item, int?, QQueryOperations> rarityProperty() {
    return addPropertyNameInternal('rarity');
  }

  QueryBuilder<Item, int?, QQueryOperations> tierProperty() {
    return addPropertyNameInternal('tier');
  }

  QueryBuilder<Item, List<String>?, QQueryOperations> typesProperty() {
    return addPropertyNameInternal('types');
  }
}
