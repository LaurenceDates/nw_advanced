// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetRecipeCollection on Isar {
  IsarCollection<Recipe> get recipes => getCollection();
}

const RecipeSchema = CollectionSchema(
  name: 'Recipe',
  schema:
      '{"name":"Recipe","idName":"id","properties":[{"name":"amount","type":"Long"},{"name":"craftedItemId","type":"String"},{"name":"craftedItemName","type":"String"},{"name":"definitionFile","type":"String"},{"name":"extraItemChance","type":"Long"},{"name":"ingredients","type":"String"},{"name":"recipeId","type":"String"},{"name":"recipeName","type":"String"},{"name":"skill","type":"String"},{"name":"station","type":"String"},{"name":"tax","type":"Double"}],"indexes":[{"name":"definitionFile","unique":false,"properties":[{"name":"definitionFile","type":"Hash","caseSensitive":true}]},{"name":"recipeId","unique":true,"properties":[{"name":"recipeId","type":"Hash","caseSensitive":true}]},{"name":"recipeName","unique":false,"properties":[{"name":"recipeName","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'craftedItemId': 1,
    'craftedItemName': 2,
    'definitionFile': 3,
    'extraItemChance': 4,
    'ingredients': 5,
    'recipeId': 6,
    'recipeName': 7,
    'skill': 8,
    'station': 9,
    'tax': 10
  },
  listProperties: {},
  indexIds: {'definitionFile': 0, 'recipeId': 1, 'recipeName': 2},
  indexValueTypes: {
    'definitionFile': [
      IndexValueType.stringHash,
    ],
    'recipeId': [
      IndexValueType.stringHash,
    ],
    'recipeName': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _recipeGetId,
  setId: _recipeSetId,
  getLinks: _recipeGetLinks,
  attachLinks: _recipeAttachLinks,
  serializeNative: _recipeSerializeNative,
  deserializeNative: _recipeDeserializeNative,
  deserializePropNative: _recipeDeserializePropNative,
  serializeWeb: _recipeSerializeWeb,
  deserializeWeb: _recipeDeserializeWeb,
  deserializePropWeb: _recipeDeserializePropWeb,
  version: 3,
);

int? _recipeGetId(Recipe object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _recipeSetId(Recipe object, int id) {
  object.id = id;
}

List<IsarLinkBase> _recipeGetLinks(Recipe object) {
  return [];
}

const _recipeIngredientConverter = IngredientConverter();

void _recipeSerializeNative(
    IsarCollection<Recipe> collection,
    IsarRawObject rawObj,
    Recipe object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.craftedItemId;
  final _craftedItemId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_craftedItemId.length) as int;
  final value2 = object.craftedItemName;
  final _craftedItemName = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_craftedItemName.length) as int;
  final value3 = object.definitionFile;
  final _definitionFile = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_definitionFile.length) as int;
  final value4 = object.extraItemChance;
  final _extraItemChance = value4;
  final value5 = _recipeIngredientConverter.toIsar(object.ingredients);
  final _ingredients = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_ingredients.length) as int;
  final value6 = object.recipeId;
  final _recipeId = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_recipeId.length) as int;
  final value7 = object.recipeName;
  final _recipeName = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_recipeName.length) as int;
  final value8 = object.skill;
  final _skill = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_skill.length) as int;
  final value9 = object.station;
  final _station = IsarBinaryWriter.utf8Encoder.convert(value9);
  dynamicSize += (_station.length) as int;
  final value10 = object.tax;
  final _tax = value10;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _amount);
  writer.writeBytes(offsets[1], _craftedItemId);
  writer.writeBytes(offsets[2], _craftedItemName);
  writer.writeBytes(offsets[3], _definitionFile);
  writer.writeLong(offsets[4], _extraItemChance);
  writer.writeBytes(offsets[5], _ingredients);
  writer.writeBytes(offsets[6], _recipeId);
  writer.writeBytes(offsets[7], _recipeName);
  writer.writeBytes(offsets[8], _skill);
  writer.writeBytes(offsets[9], _station);
  writer.writeDouble(offsets[10], _tax);
}

Recipe _recipeDeserializeNative(IsarCollection<Recipe> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Recipe();
  object.amount = reader.readLong(offsets[0]);
  object.craftedItemId = reader.readString(offsets[1]);
  object.craftedItemName = reader.readString(offsets[2]);
  object.definitionFile = reader.readString(offsets[3]);
  object.extraItemChance = reader.readLong(offsets[4]);
  object.id = id;
  object.ingredients =
      _recipeIngredientConverter.fromIsar(reader.readString(offsets[5]));
  object.recipeId = reader.readString(offsets[6]);
  object.recipeName = reader.readString(offsets[7]);
  object.skill = reader.readString(offsets[8]);
  object.station = reader.readString(offsets[9]);
  object.tax = reader.readDouble(offsets[10]);
  return object;
}

P _recipeDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (_recipeIngredientConverter.fromIsar(reader.readString(offset)))
          as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _recipeSerializeWeb(IsarCollection<Recipe> collection, Recipe object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'craftedItemId', object.craftedItemId);
  IsarNative.jsObjectSet(jsObj, 'craftedItemName', object.craftedItemName);
  IsarNative.jsObjectSet(jsObj, 'definitionFile', object.definitionFile);
  IsarNative.jsObjectSet(jsObj, 'extraItemChance', object.extraItemChance);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'ingredients',
      _recipeIngredientConverter.toIsar(object.ingredients));
  IsarNative.jsObjectSet(jsObj, 'recipeId', object.recipeId);
  IsarNative.jsObjectSet(jsObj, 'recipeName', object.recipeName);
  IsarNative.jsObjectSet(jsObj, 'skill', object.skill);
  IsarNative.jsObjectSet(jsObj, 'station', object.station);
  IsarNative.jsObjectSet(jsObj, 'tax', object.tax);
  return jsObj;
}

Recipe _recipeDeserializeWeb(IsarCollection<Recipe> collection, dynamic jsObj) {
  final object = Recipe();
  object.amount =
      IsarNative.jsObjectGet(jsObj, 'amount') ?? double.negativeInfinity;
  object.craftedItemId = IsarNative.jsObjectGet(jsObj, 'craftedItemId') ?? '';
  object.craftedItemName =
      IsarNative.jsObjectGet(jsObj, 'craftedItemName') ?? '';
  object.definitionFile = IsarNative.jsObjectGet(jsObj, 'definitionFile') ?? '';
  object.extraItemChance = IsarNative.jsObjectGet(jsObj, 'extraItemChance') ??
      double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.ingredients = _recipeIngredientConverter
      .fromIsar(IsarNative.jsObjectGet(jsObj, 'ingredients') ?? '');
  object.recipeId = IsarNative.jsObjectGet(jsObj, 'recipeId') ?? '';
  object.recipeName = IsarNative.jsObjectGet(jsObj, 'recipeName') ?? '';
  object.skill = IsarNative.jsObjectGet(jsObj, 'skill') ?? '';
  object.station = IsarNative.jsObjectGet(jsObj, 'station') ?? '';
  object.tax = IsarNative.jsObjectGet(jsObj, 'tax') ?? double.negativeInfinity;
  return object;
}

P _recipeDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount') ??
          double.negativeInfinity) as P;
    case 'craftedItemId':
      return (IsarNative.jsObjectGet(jsObj, 'craftedItemId') ?? '') as P;
    case 'craftedItemName':
      return (IsarNative.jsObjectGet(jsObj, 'craftedItemName') ?? '') as P;
    case 'definitionFile':
      return (IsarNative.jsObjectGet(jsObj, 'definitionFile') ?? '') as P;
    case 'extraItemChance':
      return (IsarNative.jsObjectGet(jsObj, 'extraItemChance') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'ingredients':
      return (_recipeIngredientConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'ingredients') ?? '')) as P;
    case 'recipeId':
      return (IsarNative.jsObjectGet(jsObj, 'recipeId') ?? '') as P;
    case 'recipeName':
      return (IsarNative.jsObjectGet(jsObj, 'recipeName') ?? '') as P;
    case 'skill':
      return (IsarNative.jsObjectGet(jsObj, 'skill') ?? '') as P;
    case 'station':
      return (IsarNative.jsObjectGet(jsObj, 'station') ?? '') as P;
    case 'tax':
      return (IsarNative.jsObjectGet(jsObj, 'tax') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _recipeAttachLinks(IsarCollection col, int id, Recipe object) {}

extension RecipeByIndex on IsarCollection<Recipe> {
  Future<Recipe?> getByRecipeId(String recipeId) {
    return getByIndex('recipeId', [recipeId]);
  }

  Recipe? getByRecipeIdSync(String recipeId) {
    return getByIndexSync('recipeId', [recipeId]);
  }

  Future<bool> deleteByRecipeId(String recipeId) {
    return deleteByIndex('recipeId', [recipeId]);
  }

  bool deleteByRecipeIdSync(String recipeId) {
    return deleteByIndexSync('recipeId', [recipeId]);
  }

  Future<List<Recipe?>> getAllByRecipeId(List<String> recipeIdValues) {
    final values = recipeIdValues.map((e) => [e]).toList();
    return getAllByIndex('recipeId', values);
  }

  List<Recipe?> getAllByRecipeIdSync(List<String> recipeIdValues) {
    final values = recipeIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('recipeId', values);
  }

  Future<int> deleteAllByRecipeId(List<String> recipeIdValues) {
    final values = recipeIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('recipeId', values);
  }

  int deleteAllByRecipeIdSync(List<String> recipeIdValues) {
    final values = recipeIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('recipeId', values);
  }
}

extension RecipeQueryWhereSort on QueryBuilder<Recipe, Recipe, QWhere> {
  QueryBuilder<Recipe, Recipe, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Recipe, Recipe, QAfterWhere> anyDefinitionFile() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'definitionFile'));
  }

  QueryBuilder<Recipe, Recipe, QAfterWhere> anyRecipeId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'recipeId'));
  }

  QueryBuilder<Recipe, Recipe, QAfterWhere> anyRecipeName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'recipeName'));
  }
}

extension RecipeQueryWhere on QueryBuilder<Recipe, Recipe, QWhereClause> {
  QueryBuilder<Recipe, Recipe, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> idBetween(
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

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> definitionFileEqualTo(
      String definitionFile) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'definitionFile',
      value: [definitionFile],
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> definitionFileNotEqualTo(
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

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> recipeIdEqualTo(
      String recipeId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'recipeId',
      value: [recipeId],
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> recipeIdNotEqualTo(
      String recipeId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'recipeId',
        upper: [recipeId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'recipeId',
        lower: [recipeId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'recipeId',
        lower: [recipeId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'recipeId',
        upper: [recipeId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> recipeNameEqualTo(
      String recipeName) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'recipeName',
      value: [recipeName],
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterWhereClause> recipeNameNotEqualTo(
      String recipeName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'recipeName',
        upper: [recipeName],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'recipeName',
        lower: [recipeName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'recipeName',
        lower: [recipeName],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'recipeName',
        upper: [recipeName],
        includeUpper: false,
      ));
    }
  }
}

extension RecipeQueryFilter on QueryBuilder<Recipe, Recipe, QFilterCondition> {
  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> amountEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> amountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> amountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> amountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'amount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdEqualTo(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdGreaterThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdLessThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdBetween(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdStartsWith(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdEndsWith(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'craftedItemId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'craftedItemId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameEqualTo(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition>
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameLessThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameBetween(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameStartsWith(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameEndsWith(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'craftedItemName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> craftedItemNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'craftedItemName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileEqualTo(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileGreaterThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileLessThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileBetween(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileStartsWith(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileEndsWith(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'definitionFile',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> definitionFileMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'definitionFile',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> extraItemChanceEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'extraItemChance',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition>
      extraItemChanceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'extraItemChance',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> extraItemChanceLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'extraItemChance',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> extraItemChanceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'extraItemChance',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsEqualTo(
    List<Ingredient> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ingredients',
      value: _recipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsGreaterThan(
    List<Ingredient> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ingredients',
      value: _recipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsLessThan(
    List<Ingredient> value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ingredients',
      value: _recipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsBetween(
    List<Ingredient> lower,
    List<Ingredient> upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ingredients',
      lower: _recipeIngredientConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _recipeIngredientConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsStartsWith(
    List<Ingredient> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'ingredients',
      value: _recipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsEndsWith(
    List<Ingredient> value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'ingredients',
      value: _recipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsContains(
      List<Ingredient> value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'ingredients',
      value: _recipeIngredientConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> ingredientsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'ingredients',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'recipeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'recipeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'recipeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'recipeId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'recipeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'recipeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'recipeId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'recipeId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'recipeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'recipeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'recipeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'recipeName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'recipeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'recipeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'recipeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> recipeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'recipeName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'skill',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'skill',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'skill',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'skill',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'skill',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'skill',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'skill',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> skillMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'skill',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'station',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'station',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'station',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'station',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'station',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'station',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'station',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> stationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'station',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> taxGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'tax',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> taxLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'tax',
      value: value,
    ));
  }

  QueryBuilder<Recipe, Recipe, QAfterFilterCondition> taxBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tax',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }
}

extension RecipeQueryLinks on QueryBuilder<Recipe, Recipe, QFilterCondition> {}

extension RecipeQueryWhereSortBy on QueryBuilder<Recipe, Recipe, QSortBy> {
  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByCraftedItemId() {
    return addSortByInternal('craftedItemId', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByCraftedItemIdDesc() {
    return addSortByInternal('craftedItemId', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByCraftedItemName() {
    return addSortByInternal('craftedItemName', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByCraftedItemNameDesc() {
    return addSortByInternal('craftedItemName', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByDefinitionFile() {
    return addSortByInternal('definitionFile', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByDefinitionFileDesc() {
    return addSortByInternal('definitionFile', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByExtraItemChance() {
    return addSortByInternal('extraItemChance', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByExtraItemChanceDesc() {
    return addSortByInternal('extraItemChance', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByIngredients() {
    return addSortByInternal('ingredients', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByIngredientsDesc() {
    return addSortByInternal('ingredients', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByRecipeId() {
    return addSortByInternal('recipeId', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByRecipeIdDesc() {
    return addSortByInternal('recipeId', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByRecipeName() {
    return addSortByInternal('recipeName', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByRecipeNameDesc() {
    return addSortByInternal('recipeName', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortBySkill() {
    return addSortByInternal('skill', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortBySkillDesc() {
    return addSortByInternal('skill', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByStation() {
    return addSortByInternal('station', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByStationDesc() {
    return addSortByInternal('station', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByTax() {
    return addSortByInternal('tax', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> sortByTaxDesc() {
    return addSortByInternal('tax', Sort.desc);
  }
}

extension RecipeQueryWhereSortThenBy
    on QueryBuilder<Recipe, Recipe, QSortThenBy> {
  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByCraftedItemId() {
    return addSortByInternal('craftedItemId', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByCraftedItemIdDesc() {
    return addSortByInternal('craftedItemId', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByCraftedItemName() {
    return addSortByInternal('craftedItemName', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByCraftedItemNameDesc() {
    return addSortByInternal('craftedItemName', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByDefinitionFile() {
    return addSortByInternal('definitionFile', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByDefinitionFileDesc() {
    return addSortByInternal('definitionFile', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByExtraItemChance() {
    return addSortByInternal('extraItemChance', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByExtraItemChanceDesc() {
    return addSortByInternal('extraItemChance', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByIngredients() {
    return addSortByInternal('ingredients', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByIngredientsDesc() {
    return addSortByInternal('ingredients', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByRecipeId() {
    return addSortByInternal('recipeId', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByRecipeIdDesc() {
    return addSortByInternal('recipeId', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByRecipeName() {
    return addSortByInternal('recipeName', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByRecipeNameDesc() {
    return addSortByInternal('recipeName', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenBySkill() {
    return addSortByInternal('skill', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenBySkillDesc() {
    return addSortByInternal('skill', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByStation() {
    return addSortByInternal('station', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByStationDesc() {
    return addSortByInternal('station', Sort.desc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByTax() {
    return addSortByInternal('tax', Sort.asc);
  }

  QueryBuilder<Recipe, Recipe, QAfterSortBy> thenByTaxDesc() {
    return addSortByInternal('tax', Sort.desc);
  }
}

extension RecipeQueryWhereDistinct on QueryBuilder<Recipe, Recipe, QDistinct> {
  QueryBuilder<Recipe, Recipe, QDistinct> distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByCraftedItemId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('craftedItemId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByCraftedItemName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('craftedItemName',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByDefinitionFile(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('definitionFile',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByExtraItemChance() {
    return addDistinctByInternal('extraItemChance');
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByIngredients(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('ingredients', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByRecipeId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('recipeId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByRecipeName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('recipeName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctBySkill(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('skill', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByStation(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('station', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recipe, Recipe, QDistinct> distinctByTax() {
    return addDistinctByInternal('tax');
  }
}

extension RecipeQueryProperty on QueryBuilder<Recipe, Recipe, QQueryProperty> {
  QueryBuilder<Recipe, int, QQueryOperations> amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<Recipe, String, QQueryOperations> craftedItemIdProperty() {
    return addPropertyNameInternal('craftedItemId');
  }

  QueryBuilder<Recipe, String, QQueryOperations> craftedItemNameProperty() {
    return addPropertyNameInternal('craftedItemName');
  }

  QueryBuilder<Recipe, String, QQueryOperations> definitionFileProperty() {
    return addPropertyNameInternal('definitionFile');
  }

  QueryBuilder<Recipe, int, QQueryOperations> extraItemChanceProperty() {
    return addPropertyNameInternal('extraItemChance');
  }

  QueryBuilder<Recipe, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Recipe, List<Ingredient>, QQueryOperations>
      ingredientsProperty() {
    return addPropertyNameInternal('ingredients');
  }

  QueryBuilder<Recipe, String, QQueryOperations> recipeIdProperty() {
    return addPropertyNameInternal('recipeId');
  }

  QueryBuilder<Recipe, String, QQueryOperations> recipeNameProperty() {
    return addPropertyNameInternal('recipeName');
  }

  QueryBuilder<Recipe, String, QQueryOperations> skillProperty() {
    return addPropertyNameInternal('skill');
  }

  QueryBuilder<Recipe, String, QQueryOperations> stationProperty() {
    return addPropertyNameInternal('station');
  }

  QueryBuilder<Recipe, double, QQueryOperations> taxProperty() {
    return addPropertyNameInternal('tax');
  }
}
