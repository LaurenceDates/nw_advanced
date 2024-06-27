// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prices.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPriceCollection on Isar {
  IsarCollection<Price> get prices => getCollection();
}

const PriceSchema = CollectionSchema(
  name: 'Price',
  schema:
      '{"name":"Price","idName":"id","properties":[{"name":"availability","type":"Long"},{"name":"highestBuyOrder","type":"Double"},{"name":"itemId","type":"String"},{"name":"itemName","type":"String"},{"name":"lastUpdated","type":"Long"},{"name":"price","type":"Double"},{"name":"priceDifference","type":"Double"},{"name":"priceDifferenceFactor","type":"Double"},{"name":"qty","type":"Long"},{"name":"serverId","type":"Long"}],"indexes":[{"name":"serverId_itemId","unique":true,"properties":[{"name":"serverId","type":"Value","caseSensitive":false},{"name":"itemId","type":"Hash","caseSensitive":false}]},{"name":"serverId_itemName","unique":false,"properties":[{"name":"serverId","type":"Value","caseSensitive":false},{"name":"itemName","type":"Value","caseSensitive":false}]}],"links":[{"name":"item","target":"Item"}]}',
  idName: 'id',
  propertyIds: {
    'availability': 0,
    'highestBuyOrder': 1,
    'itemId': 2,
    'itemName': 3,
    'lastUpdated': 4,
    'price': 5,
    'priceDifference': 6,
    'priceDifferenceFactor': 7,
    'qty': 8,
    'serverId': 9
  },
  listProperties: {},
  indexIds: {'serverId_itemId': 0, 'serverId_itemName': 1},
  indexValueTypes: {
    'serverId_itemId': [
      IndexValueType.long,
      IndexValueType.stringHashCIS,
    ],
    'serverId_itemName': [
      IndexValueType.long,
      IndexValueType.stringCIS,
    ]
  },
  linkIds: {'item': 0},
  backlinkLinkNames: {},
  getId: _priceGetId,
  setId: _priceSetId,
  getLinks: _priceGetLinks,
  attachLinks: _priceAttachLinks,
  serializeNative: _priceSerializeNative,
  deserializeNative: _priceDeserializeNative,
  deserializePropNative: _priceDeserializePropNative,
  serializeWeb: _priceSerializeWeb,
  deserializeWeb: _priceDeserializeWeb,
  deserializePropWeb: _priceDeserializePropWeb,
  version: 3,
);

int? _priceGetId(Price object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _priceSetId(Price object, int id) {
  object.id = id;
}

List<IsarLinkBase> _priceGetLinks(Price object) {
  return [object.item];
}

void _priceSerializeNative(
    IsarCollection<Price> collection,
    IsarRawObject rawObj,
    Price object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.availability;
  final _availability = value0;
  final value1 = object.highestBuyOrder;
  final _highestBuyOrder = value1;
  final value2 = object.itemId;
  final _itemId = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_itemId.length) as int;
  final value3 = object.itemName;
  final _itemName = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_itemName.length) as int;
  final value4 = object.lastUpdated;
  final _lastUpdated = value4;
  final value5 = object.price;
  final _price = value5;
  final value6 = object.priceDifference;
  final _priceDifference = value6;
  final value7 = object.priceDifferenceFactor;
  final _priceDifferenceFactor = value7;
  final value8 = object.qty;
  final _qty = value8;
  final value9 = object.serverId;
  final _serverId = value9;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _availability);
  writer.writeDouble(offsets[1], _highestBuyOrder);
  writer.writeBytes(offsets[2], _itemId);
  writer.writeBytes(offsets[3], _itemName);
  writer.writeLong(offsets[4], _lastUpdated);
  writer.writeDouble(offsets[5], _price);
  writer.writeDouble(offsets[6], _priceDifference);
  writer.writeDouble(offsets[7], _priceDifferenceFactor);
  writer.writeLong(offsets[8], _qty);
  writer.writeLong(offsets[9], _serverId);
}

Price _priceDeserializeNative(IsarCollection<Price> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Price();
  object.availability = reader.readLongOrNull(offsets[0]);
  object.highestBuyOrder = reader.readDoubleOrNull(offsets[1]);
  object.id = id;
  object.itemId = reader.readString(offsets[2]);
  object.itemName = reader.readString(offsets[3]);
  object.lastUpdated = reader.readLongOrNull(offsets[4]);
  object.price = reader.readDoubleOrNull(offsets[5]);
  object.priceDifference = reader.readDoubleOrNull(offsets[6]);
  object.priceDifferenceFactor = reader.readDoubleOrNull(offsets[7]);
  object.qty = reader.readLongOrNull(offsets[8]);
  object.serverId = reader.readLong(offsets[9]);
  _priceAttachLinks(collection, id, object);
  return object;
}

P _priceDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _priceSerializeWeb(IsarCollection<Price> collection, Price object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'availability', object.availability);
  IsarNative.jsObjectSet(jsObj, 'highestBuyOrder', object.highestBuyOrder);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'itemId', object.itemId);
  IsarNative.jsObjectSet(jsObj, 'itemName', object.itemName);
  IsarNative.jsObjectSet(jsObj, 'lastUpdated', object.lastUpdated);
  IsarNative.jsObjectSet(jsObj, 'price', object.price);
  IsarNative.jsObjectSet(jsObj, 'priceDifference', object.priceDifference);
  IsarNative.jsObjectSet(
      jsObj, 'priceDifferenceFactor', object.priceDifferenceFactor);
  IsarNative.jsObjectSet(jsObj, 'qty', object.qty);
  IsarNative.jsObjectSet(jsObj, 'serverId', object.serverId);
  return jsObj;
}

Price _priceDeserializeWeb(IsarCollection<Price> collection, dynamic jsObj) {
  final object = Price();
  object.availability = IsarNative.jsObjectGet(jsObj, 'availability');
  object.highestBuyOrder = IsarNative.jsObjectGet(jsObj, 'highestBuyOrder');
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.itemId = IsarNative.jsObjectGet(jsObj, 'itemId') ?? '';
  object.itemName = IsarNative.jsObjectGet(jsObj, 'itemName') ?? '';
  object.lastUpdated = IsarNative.jsObjectGet(jsObj, 'lastUpdated');
  object.price = IsarNative.jsObjectGet(jsObj, 'price');
  object.priceDifference = IsarNative.jsObjectGet(jsObj, 'priceDifference');
  object.priceDifferenceFactor =
      IsarNative.jsObjectGet(jsObj, 'priceDifferenceFactor');
  object.qty = IsarNative.jsObjectGet(jsObj, 'qty');
  object.serverId =
      IsarNative.jsObjectGet(jsObj, 'serverId') ?? double.negativeInfinity;
  _priceAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _priceDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'availability':
      return (IsarNative.jsObjectGet(jsObj, 'availability')) as P;
    case 'highestBuyOrder':
      return (IsarNative.jsObjectGet(jsObj, 'highestBuyOrder')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'itemId':
      return (IsarNative.jsObjectGet(jsObj, 'itemId') ?? '') as P;
    case 'itemName':
      return (IsarNative.jsObjectGet(jsObj, 'itemName') ?? '') as P;
    case 'lastUpdated':
      return (IsarNative.jsObjectGet(jsObj, 'lastUpdated')) as P;
    case 'price':
      return (IsarNative.jsObjectGet(jsObj, 'price')) as P;
    case 'priceDifference':
      return (IsarNative.jsObjectGet(jsObj, 'priceDifference')) as P;
    case 'priceDifferenceFactor':
      return (IsarNative.jsObjectGet(jsObj, 'priceDifferenceFactor')) as P;
    case 'qty':
      return (IsarNative.jsObjectGet(jsObj, 'qty')) as P;
    case 'serverId':
      return (IsarNative.jsObjectGet(jsObj, 'serverId') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _priceAttachLinks(IsarCollection col, int id, Price object) {
  object.item.attach(col, col.isar.items, 'item', id);
}

extension PriceByIndex on IsarCollection<Price> {
  Future<Price?> getByServerIdItemId(int serverId, String itemId) {
    return getByIndex('serverId_itemId', [serverId, itemId]);
  }

  Price? getByServerIdItemIdSync(int serverId, String itemId) {
    return getByIndexSync('serverId_itemId', [serverId, itemId]);
  }

  Future<bool> deleteByServerIdItemId(int serverId, String itemId) {
    return deleteByIndex('serverId_itemId', [serverId, itemId]);
  }

  bool deleteByServerIdItemIdSync(int serverId, String itemId) {
    return deleteByIndexSync('serverId_itemId', [serverId, itemId]);
  }

  Future<List<Price?>> getAllByServerIdItemId(
      List<int> serverIdValues, List<String> itemIdValues) {
    final len = serverIdValues.length;
    assert(itemIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([serverIdValues[i], itemIdValues[i]]);
    }

    return getAllByIndex('serverId_itemId', values);
  }

  List<Price?> getAllByServerIdItemIdSync(
      List<int> serverIdValues, List<String> itemIdValues) {
    final len = serverIdValues.length;
    assert(itemIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([serverIdValues[i], itemIdValues[i]]);
    }

    return getAllByIndexSync('serverId_itemId', values);
  }

  Future<int> deleteAllByServerIdItemId(
      List<int> serverIdValues, List<String> itemIdValues) {
    final len = serverIdValues.length;
    assert(itemIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([serverIdValues[i], itemIdValues[i]]);
    }

    return deleteAllByIndex('serverId_itemId', values);
  }

  int deleteAllByServerIdItemIdSync(
      List<int> serverIdValues, List<String> itemIdValues) {
    final len = serverIdValues.length;
    assert(itemIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([serverIdValues[i], itemIdValues[i]]);
    }

    return deleteAllByIndexSync('serverId_itemId', values);
  }
}

extension PriceQueryWhereSort on QueryBuilder<Price, Price, QWhere> {
  QueryBuilder<Price, Price, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Price, Price, QAfterWhere> anyServerIdItemId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'serverId_itemId'));
  }

  QueryBuilder<Price, Price, QAfterWhere> anyServerIdItemName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'serverId_itemName'));
  }
}

extension PriceQueryWhere on QueryBuilder<Price, Price, QWhereClause> {
  QueryBuilder<Price, Price, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Price, Price, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Price, Price, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Price, Price, QAfterWhereClause> idBetween(
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

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdEqualTo(int serverId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_itemId',
      value: [serverId],
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdNotEqualTo(
      int serverId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_itemId',
        upper: [serverId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_itemId',
        lower: [serverId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_itemId',
        lower: [serverId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_itemId',
        upper: [serverId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdGreaterThan(
    int serverId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'serverId_itemId',
      lower: [serverId],
      includeLower: include,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdLessThan(
    int serverId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'serverId_itemId',
      upper: [serverId],
      includeUpper: include,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdBetween(
    int lowerServerId,
    int upperServerId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_itemId',
      lower: [lowerServerId],
      includeLower: includeLower,
      upper: [upperServerId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdItemIdEqualTo(
      int serverId, String itemId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_itemId',
      value: [serverId, itemId],
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdItemIdNotEqualTo(
      int serverId, String itemId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_itemId',
        upper: [serverId, itemId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_itemId',
        lower: [serverId, itemId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_itemId',
        lower: [serverId, itemId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_itemId',
        upper: [serverId, itemId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdItemNameEqualTo(
      int serverId, String itemName) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'serverId_itemName',
      value: [serverId, itemName],
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdItemNameNotEqualTo(
      int serverId, String itemName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_itemName',
        upper: [serverId, itemName],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_itemName',
        lower: [serverId, itemName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'serverId_itemName',
        lower: [serverId, itemName],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'serverId_itemName',
        upper: [serverId, itemName],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Price, Price, QAfterWhereClause>
      serverIdEqualToItemNameGreaterThan(
    int serverId,
    String itemName, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'serverId_itemName',
      lower: [serverId, itemName],
      includeLower: include,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdEqualToItemNameLessThan(
    int serverId,
    String itemName, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'serverId_itemName',
      upper: [serverId, itemName],
      includeUpper: include,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause> serverIdEqualToItemNameBetween(
    int serverId,
    String lowerItemName,
    String upperItemName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_itemName',
      lower: [serverId, lowerItemName],
      includeLower: includeLower,
      upper: [serverId, upperItemName],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Price, Price, QAfterWhereClause>
      serverIdEqualToItemNameStartsWith(int serverId, String ItemNamePrefix) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'serverId_itemName',
      lower: [serverId, ItemNamePrefix],
      includeLower: true,
      upper: [serverId, '$ItemNamePrefix\u{FFFFF}'],
      includeUpper: true,
    ));
  }
}

extension PriceQueryFilter on QueryBuilder<Price, Price, QFilterCondition> {
  QueryBuilder<Price, Price, QAfterFilterCondition> availabilityIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'availability',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> availabilityEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'availability',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> availabilityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'availability',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> availabilityLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'availability',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> availabilityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'availability',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> highestBuyOrderIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'highestBuyOrder',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> highestBuyOrderGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'highestBuyOrder',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> highestBuyOrderLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'highestBuyOrder',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> highestBuyOrderBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'highestBuyOrder',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdEqualTo(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdGreaterThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdLessThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdBetween(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdStartsWith(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdEndsWith(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> itemIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameEqualTo(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameGreaterThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameLessThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameBetween(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameStartsWith(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameEndsWith(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'itemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> itemNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'itemName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> lastUpdatedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastUpdated',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> lastUpdatedEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastUpdated',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> lastUpdatedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastUpdated',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> lastUpdatedLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastUpdated',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> lastUpdatedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastUpdated',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'price',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'price',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceDifferenceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'priceDifference',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceDifferenceGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'priceDifference',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceDifferenceLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'priceDifference',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> priceDifferenceBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceDifference',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition>
      priceDifferenceFactorIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'priceDifferenceFactor',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition>
      priceDifferenceFactorGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'priceDifferenceFactor',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition>
      priceDifferenceFactorLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'priceDifferenceFactor',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition>
      priceDifferenceFactorBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceDifferenceFactor',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> qtyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'qty',
      value: null,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> qtyEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> qtyGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> qtyLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> qtyBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'qty',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> serverIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'serverId',
      value: value,
    ));
  }

  QueryBuilder<Price, Price, QAfterFilterCondition> serverIdGreaterThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> serverIdLessThan(
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

  QueryBuilder<Price, Price, QAfterFilterCondition> serverIdBetween(
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

extension PriceQueryLinks on QueryBuilder<Price, Price, QFilterCondition> {
  QueryBuilder<Price, Price, QAfterFilterCondition> item(FilterQuery<Item> q) {
    return linkInternal(
      isar.items,
      q,
      'item',
    );
  }
}

extension PriceQueryWhereSortBy on QueryBuilder<Price, Price, QSortBy> {
  QueryBuilder<Price, Price, QAfterSortBy> sortByAvailability() {
    return addSortByInternal('availability', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByAvailabilityDesc() {
    return addSortByInternal('availability', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByHighestBuyOrder() {
    return addSortByInternal('highestBuyOrder', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByHighestBuyOrderDesc() {
    return addSortByInternal('highestBuyOrder', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByItemName() {
    return addSortByInternal('itemName', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByItemNameDesc() {
    return addSortByInternal('itemName', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByLastUpdated() {
    return addSortByInternal('lastUpdated', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByLastUpdatedDesc() {
    return addSortByInternal('lastUpdated', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByPriceDifference() {
    return addSortByInternal('priceDifference', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByPriceDifferenceDesc() {
    return addSortByInternal('priceDifference', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByPriceDifferenceFactor() {
    return addSortByInternal('priceDifferenceFactor', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByPriceDifferenceFactorDesc() {
    return addSortByInternal('priceDifferenceFactor', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByServerId() {
    return addSortByInternal('serverId', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> sortByServerIdDesc() {
    return addSortByInternal('serverId', Sort.desc);
  }
}

extension PriceQueryWhereSortThenBy on QueryBuilder<Price, Price, QSortThenBy> {
  QueryBuilder<Price, Price, QAfterSortBy> thenByAvailability() {
    return addSortByInternal('availability', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByAvailabilityDesc() {
    return addSortByInternal('availability', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByHighestBuyOrder() {
    return addSortByInternal('highestBuyOrder', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByHighestBuyOrderDesc() {
    return addSortByInternal('highestBuyOrder', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByItemId() {
    return addSortByInternal('itemId', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByItemIdDesc() {
    return addSortByInternal('itemId', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByItemName() {
    return addSortByInternal('itemName', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByItemNameDesc() {
    return addSortByInternal('itemName', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByLastUpdated() {
    return addSortByInternal('lastUpdated', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByLastUpdatedDesc() {
    return addSortByInternal('lastUpdated', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByPriceDifference() {
    return addSortByInternal('priceDifference', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByPriceDifferenceDesc() {
    return addSortByInternal('priceDifference', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByPriceDifferenceFactor() {
    return addSortByInternal('priceDifferenceFactor', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByPriceDifferenceFactorDesc() {
    return addSortByInternal('priceDifferenceFactor', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByServerId() {
    return addSortByInternal('serverId', Sort.asc);
  }

  QueryBuilder<Price, Price, QAfterSortBy> thenByServerIdDesc() {
    return addSortByInternal('serverId', Sort.desc);
  }
}

extension PriceQueryWhereDistinct on QueryBuilder<Price, Price, QDistinct> {
  QueryBuilder<Price, Price, QDistinct> distinctByAvailability() {
    return addDistinctByInternal('availability');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByHighestBuyOrder() {
    return addDistinctByInternal('highestBuyOrder');
  }

  QueryBuilder<Price, Price, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByItemId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Price, Price, QDistinct> distinctByItemName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Price, Price, QDistinct> distinctByLastUpdated() {
    return addDistinctByInternal('lastUpdated');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByPrice() {
    return addDistinctByInternal('price');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByPriceDifference() {
    return addDistinctByInternal('priceDifference');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByPriceDifferenceFactor() {
    return addDistinctByInternal('priceDifferenceFactor');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByQty() {
    return addDistinctByInternal('qty');
  }

  QueryBuilder<Price, Price, QDistinct> distinctByServerId() {
    return addDistinctByInternal('serverId');
  }
}

extension PriceQueryProperty on QueryBuilder<Price, Price, QQueryProperty> {
  QueryBuilder<Price, int?, QQueryOperations> availabilityProperty() {
    return addPropertyNameInternal('availability');
  }

  QueryBuilder<Price, double?, QQueryOperations> highestBuyOrderProperty() {
    return addPropertyNameInternal('highestBuyOrder');
  }

  QueryBuilder<Price, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Price, String, QQueryOperations> itemIdProperty() {
    return addPropertyNameInternal('itemId');
  }

  QueryBuilder<Price, String, QQueryOperations> itemNameProperty() {
    return addPropertyNameInternal('itemName');
  }

  QueryBuilder<Price, int?, QQueryOperations> lastUpdatedProperty() {
    return addPropertyNameInternal('lastUpdated');
  }

  QueryBuilder<Price, double?, QQueryOperations> priceProperty() {
    return addPropertyNameInternal('price');
  }

  QueryBuilder<Price, double?, QQueryOperations> priceDifferenceProperty() {
    return addPropertyNameInternal('priceDifference');
  }

  QueryBuilder<Price, double?, QQueryOperations>
      priceDifferenceFactorProperty() {
    return addPropertyNameInternal('priceDifferenceFactor');
  }

  QueryBuilder<Price, int?, QQueryOperations> qtyProperty() {
    return addPropertyNameInternal('qty');
  }

  QueryBuilder<Price, int, QQueryOperations> serverIdProperty() {
    return addPropertyNameInternal('serverId');
  }
}
