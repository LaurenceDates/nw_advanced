import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:nw_advanced/exceptions/application_exceptions.dart';
import 'package:nw_advanced/local_db/service/local_db_service.dart';
import 'package:nw_advanced/service/data/global_variables.dart';

import '../../local_db/models/items.dart';
import '../../local_db/models/prices.dart';

class PriceService {
  static Future<PriceSearchResult?> getByItemId(int serverId, String itemId) async {
    return compute(_getByItemIdInternal, _GetByIdArguments(serverId, itemId, await GlobalVariables.isarArgs));
  }

  static Future<PriceSearchResult?> _getByItemIdInternal(_GetByIdArguments args) {
    return LocalDatabaseService.isar(args.isarArgs).then((isar) => isar.prices)
        .then((col) => col.getByServerIdItemId(args.server, args.id)
        .then((p) {
          if (p == null) {
            return null;
          } else {
            return PriceSearchResult.fromModels(p.item.value, p);
          }
        }));
  }


  static Future<Stream<PriceSearchResult?>?> watchByItemId(int serverId, String itemId) async {
    return compute(_watchByItemIdInternal, _GetByIdArguments(serverId, itemId, await GlobalVariables.isarArgs));
  }

  static Future<Stream<PriceSearchResult?>?> _watchByItemIdInternal(_GetByIdArguments args) {
    final Future<IsarCollection<Price>> col = LocalDatabaseService.isar(args.isarArgs).then((isar) => isar.prices);
    final Future<Price?> price = col.then((col) => col.getByServerIdItemId(args.server, args.id));
    return price.then((p){
      if (p == null) {
        return Future.value(null);
      } else {
        return col.then((col) => col.watchObject(p.id).map((event) => PriceSearchResult.fromModels(event?.item.value, event)));
      }
    });
  }

  static Future<List<PriceSearchResult>> findByItemName(int serverId, String itemName) async {
    return compute(_findByItemNameInternal, _FindByNameArguments(serverId, itemName, await GlobalVariables.isarArgs));
  }

  static Future<List<PriceSearchResult>> _findByItemNameInternal(_FindByNameArguments args) {
    return LocalDatabaseService.isar(args.isarArgs).then((isar) => isar.prices)
        .then((col) => col.filter().serverIdEqualTo(args.server).and().itemNameContains(args.name).findAll())
        .then((list) sync* {
          for (Price p in list) {
            yield PriceSearchResult.fromModels(p.item.value, p);
          }
        })
        .then((it) => List<PriceSearchResult>.from(it));
  }

  static Future<List<PriceSearchResult>> findItems({required int server, String? name, int? tier, int? rarity, String? type, double? priceMin, double? priceMax, int? availabilityMin, int? availabilityMax, double? buyOrderMax, double? buyOrderMin, int? qtyMin, int? qtyMax, double? priceDifference, double? priceDifferenceMagnification, ItemSort sort = ItemSort.priceDifferenceDesc, int? limit}) async {
    final _FindItemsArguments args = _FindItemsArguments(
        server: server,
        name: name,
        tier: tier,
        rarity: rarity,
        type: type,
        priceMin: priceMin,
        priceMax: priceMax,
        availabilityMin: availabilityMin,
        availabilityMax: availabilityMax,
        buyOrderMax: buyOrderMax,
        buyOrderMin: buyOrderMin,
        qtyMin: qtyMin,
        qtyMax: qtyMax,
        priceDifference: priceDifference,
        priceDifferenceFactor: priceDifferenceMagnification,
        sort: sort,
        limit: limit,
        isarArgs: await GlobalVariables.isarArgs
    );

    return compute(_findItemsInternal, args);
  }

  static Future<List<PriceSearchResult>> _findItemsInternal(_FindItemsArguments args) async {
    final IsarCollection<Price> prices = await LocalDatabaseService.isar(args.isarArgs).then((i) => i.prices);
    // print("SERVER: ${args.server}");

    QueryBuilder<Price, Price, QAfterFilterCondition> query = prices.filter().serverIdEqualTo(args.server);
    if (args.name != null) {
      query = query.and().itemNameContains(args.name!, caseSensitive: false);
    }

    if (args.tier != null) {
      if (args.rarity != null) {
        if (args.type != null) { // y,y,y
          query = query.and().item((q) => q.tierEqualTo(args.tier).and().rarityEqualTo(args.rarity).and().typesAnyEqualTo(args.type, caseSensitive: false));
        } else { //y,y,n
          query = query.and().item((q) => q.tierEqualTo(args.tier).and().rarityEqualTo(args.rarity));
        }
      } else {
        if (args.type != null) { // y,n,y
          query = query.and().item((q) => q.tierEqualTo(args.tier).and().typesAnyEqualTo(args.type, caseSensitive: false));
        } else { // y,n,n
          query = query.and().item((q) => q.tierEqualTo(args.tier));
        }
      }
    } else {
      if (args.rarity != null) {
        if (args.type != null) { // n,y,y
          query = query.and().item((q) => q.rarityEqualTo(args.rarity).and().typesAnyEqualTo(args.type, caseSensitive: false));
        } else { //n,y,n
          query = query.and().item((q) => q.rarityEqualTo(args.rarity));
        }
      } else {
        if (args.type != null) { // n,n,y
          query = query.and().item((q) => q.typesAnyEqualTo(args.type, caseSensitive: false));
        }
      }
    }

    if (args.priceMin != null) {
      if (args.priceMax != null) {
          query = query.and().priceBetween(args.priceMin, args.priceMax);
      } else {
          query = query.and().priceGreaterThan(args.priceMin);
      }
    } else {
      if (args.priceMax != null) {
          query = query.and().priceLessThan(args.priceMax);
      }
    }

    if (args.availabilityMin != null) {
      if (args.availabilityMax != null) {
          query = query.and().availabilityBetween(args.availabilityMin, args.availabilityMax);
      } else {
          query = query.and().availabilityGreaterThan(args.availabilityMin);
      }
    } else {
      if (args.availabilityMax != null) {
          query = query.and().group((q) => q.availabilityIsNull().or().availabilityLessThan(args.availabilityMax));
      }
    }

    if (args.buyOrderMax != null) {
      if (args.buyOrderMin != null) {
          query = query.and().highestBuyOrderBetween(args.buyOrderMin, args.buyOrderMax);
      } else {
          query = query.and().group((q) => q.highestBuyOrderIsNull().or().highestBuyOrderLessThan(args.buyOrderMax));
      }
    } else {
      if (args.buyOrderMin != null) {
          query = query.and().highestBuyOrderGreaterThan(args.buyOrderMin);
      }
    }
    if (args.qtyMin != null) {
      if (args.qtyMax != null) {
          query = query.and().qtyBetween(args.qtyMin, args.qtyMax);
      } else {
          query = query.and().qtyGreaterThan(args.qtyMin);
      }
    } else {
      if (args.qtyMax != null) {
          query = query.and().group((q) => q.qtyIsNull().or().qtyLessThan(args.qtyMax));
      }
    }
    if (args.priceDifference != null) {
        query = query.and().priceDifferenceGreaterThan(args.priceDifference);
    }
    if (args.priceDifferenceFactor != null) {
        query = query.and().priceDifferenceFactorGreaterThan(args.priceDifferenceFactor);
    }

    late final QueryBuilder<Price, Price, QAfterSortBy> query1;
    switch (args.sort) {
      case ItemSort.nameAsc:
        query1 = query.sortByItemName();
        break;
      case ItemSort.nameDesc:
        query1 = query.sortByItemNameDesc();
        break;
      case ItemSort.tierAndRarityAsc: // No Isar Sort Method for this order
        if(args.limit == null) {
          return query.findAll()
              .then((ls) {
                ls.sort((e1, e2) {
                  int i1 = 0; int i2 = 0;
                  if (e1.item.value?.tier != null) {
                    i1 += e1.item.value!.tier! * 100;
                  }
                  if (e1.item.value?.rarity != null) {
                    i1 += e1.item.value!.rarity!;
                  }
                  if (e2.item.value?.tier != null) {
                    i2 += e2.item.value!.tier! * 100;
                  }
                  if (e2.item.value?.rarity != null) {
                    i2 += e2.item.value!.rarity!;
                  }
                  return i1 - i2;
                });
                return ls;
              })
              .then((list) sync* {
                // print(list);
                for (Price p in list) {
                  yield PriceSearchResult.fromModels(p.item.value, p);
                }
              })
              .then((it) => List<PriceSearchResult>.from(it));
        } else {
          return query.findAll()
              .then((ls) {
                ls.sort((e1, e2) {
                  int i1 = 0; int i2 = 0;
                  if (e1.item.value?.tier != null) {
                    i1 += e1.item.value!.tier! * 100;
                  }
                  if (e1.item.value?.rarity != null) {
                    i1 += e1.item.value!.rarity!;
                  }
                  if (e2.item.value?.tier != null) {
                    i2 += e2.item.value!.tier! * 100;
                  }
                  if (e2.item.value?.rarity != null) {
                    i2 += e2.item.value!.rarity!;
                  }
                  return i1 - i2;
                });
                return ls;
              })
              .then((list) sync* {
                // print(list);
                for (Price p in list) {
                  yield PriceSearchResult.fromModels(p.item.value, p);
                }
              })
              .then((it) => List<PriceSearchResult>.from(it));
        }
      case ItemSort.tierAndRarityDesc: // No Isar Sort Method for this order
        if(args.limit == null) {
          return query.findAll()
              .then((ls) {
            ls.sort((e1, e2) {
              int i1 = 0; int i2 = 0;
              if (e1.item.value?.tier != null) {
                i1 += e1.item.value!.tier! * 100;
              }
              if (e1.item.value?.rarity != null) {
                i1 += e1.item.value!.rarity!;
              }
              if (e2.item.value?.tier != null) {
                i2 += e2.item.value!.tier! * 100;
              }
              if (e2.item.value?.rarity != null) {
                i2 += e2.item.value!.rarity!;
              }
              return i2 - i1;
            });
            return ls;
          })
              .then((list) sync* {
            // print(list);
            for (Price p in list) {
              yield PriceSearchResult.fromModels(p.item.value, p);
            }
          })
              .then((it) => List<PriceSearchResult>.from(it));
        } else {
          return query.findAll()
              .then((ls) {
            ls.sort((e1, e2) {
              int i1 = 0; int i2 = 0;
              if (e1.item.value?.tier != null) {
                i1 += e1.item.value!.tier! * 100;
              }
              if (e1.item.value?.rarity != null) {
                i1 += e1.item.value!.rarity!;
              }
              if (e2.item.value?.tier != null) {
                i2 += e2.item.value!.tier! * 100;
              }
              if (e2.item.value?.rarity != null) {
                i2 += e2.item.value!.rarity!;
              }
              return i2 - i1;
            });
            return ls;
          })
              .then((list) sync* {
            // print(list);
            for (Price p in list) {
              yield PriceSearchResult.fromModels(p.item.value, p);
            }
          })
              .then((it) => List<PriceSearchResult>.from(it));
        }
      case ItemSort.priceAsc:
        query1 = query.sortByPrice();
        break;
      case ItemSort.priceDesc:
        query1 = query.sortByPriceDesc();
        break;
      case ItemSort.availabilityAsc:
        query1 = query.sortByAvailability();
        break;
      case ItemSort.availabilityDesc:
        query1 = query.sortByAvailabilityDesc();
        break;
      case ItemSort.highestBuyOrderAsc:
        query1 = query.sortByHighestBuyOrder();
        break;
      case ItemSort.highestBuyOrderDesc:
        query1 = query.sortByHighestBuyOrderDesc();
        break;
      case ItemSort.qtyAsc:
        query1 = query.sortByQty();
        break;
      case ItemSort.qtyDesc:
        query1 = query.sortByQtyDesc();
        break;
      case ItemSort.priceDifferenceAsc:
        query1 = query.sortByPriceDifference();
        break;
      case ItemSort.priceDifferenceDesc:
        query1 = query.sortByPriceDifferenceDesc();
        break;
      case ItemSort.priceDifferenceFactorAsc:
        query1 = query.sortByPriceDifferenceFactor();
        break;
      case ItemSort.priceDifferenceFactorDesc:
        query1 = query.sortByPriceDifferenceFactorDesc();
        break;
    }

    if (args.limit == null) {
      return query1.findAll()
          .then((list) sync* {
            // print(list);
            for (Price p in list) {
              yield PriceSearchResult.fromModels(p.item.value, p);
            }
          })
          .then((it) => List<PriceSearchResult>.from(it));
    } else {
      return query1.limit(args.limit!).findAll()
          .then((list) sync* {
            for (Price p in list) {
              yield PriceSearchResult.fromModels(p.item.value, p);
            }
          })
          .then((it) => List<PriceSearchResult>.from(it));
    }
  }
}

enum ItemSort {
  nameAsc,
  nameDesc,
  tierAndRarityAsc,
  tierAndRarityDesc,
  priceAsc,
  priceDesc,
  availabilityAsc,
  availabilityDesc,
  highestBuyOrderAsc,
  highestBuyOrderDesc,
  qtyAsc,
  qtyDesc,
  priceDifferenceAsc,
  priceDifferenceDesc,
  priceDifferenceFactorAsc,
  priceDifferenceFactorDesc
}

class _GetByIdArguments {
  final int server;
  final String id;
  final IsarArguments isarArgs;

  _GetByIdArguments(this.server, this.id, this.isarArgs);
}

class _FindByNameArguments {
  final int server;
  final String name;
  final IsarArguments isarArgs;

  _FindByNameArguments(this.server, this.name, this.isarArgs);
}

class _FindItemsArguments {
  final int server;
  final String? name;
  final int? tier;
  final int? rarity;
  final String? type;
  final double? priceMin;
  final double? priceMax;
  final int? availabilityMin;
  final int? availabilityMax;
  final double? buyOrderMax;
  final double? buyOrderMin;
  final int? qtyMin;
  final int? qtyMax;
  final double? priceDifference;
  final double? priceDifferenceFactor;
  final ItemSort sort;
  final int? limit;
  final IsarArguments isarArgs;

  _FindItemsArguments({required this.server, this.name, this.tier, this.rarity, this.type,
      this.priceMin, this.priceMax, this.availabilityMin, this.availabilityMax,
      this.buyOrderMax, this.buyOrderMin, this.qtyMin, this.qtyMax,
      this.priceDifference, this.priceDifferenceFactor, required this.sort,
      this.limit, required this.isarArgs});
}

class PriceSearchResult {
  int? serverId;
  late String itemId;
  late String itemName;
  int? tier;
  int? rarity;
  List<String>? types;
  double? price;
  int? availability;
  int? lastUpdated;
  double? highestBuyOrder;
  int? qty;
  double? priceDifference;
  double? priceDifferenceFactor;

  PriceSearchResult(
      this.serverId,
      this.itemId,
      this.itemName,
      this.tier,
      this.rarity,
      this.types,
      this.price,
      this.availability,
      this.lastUpdated,
      this.highestBuyOrder,
      this.qty,
      this.priceDifference,
      this.priceDifferenceFactor);

  factory PriceSearchResult.fromModels(Item? item, Price? price) {
    if (item == null) {
      if (price == null) {
        throw UnexpectedApplicationException(message: "Trying to create a PriceSearchResult from both null Item and Price entities.");
      } else {
        return PriceSearchResult(price.serverId, price.itemId, price.itemName, null, null, null, price.price, price.availability, price.lastUpdated, price.highestBuyOrder, price.qty, price.priceDifference, price.priceDifferenceFactor);
      }
    } else {
      if (price == null) {
        return PriceSearchResult(null, item.itemId, item.itemName, item.tier, item.rarity, item.types, null, null, null, null, null, null, null);
      } else {
        if (item.itemId != price.itemId) {
          throw UnexpectedApplicationException(message: "Trying to create a PriceSearchResult from both Item and Price entities of different items.");
        } else {
          return PriceSearchResult(price.serverId, item.itemId, item.itemName, item.tier, item.rarity, item.types, price.price, price.availability, price.lastUpdated, price.highestBuyOrder, price.qty, price.priceDifference, price.priceDifferenceFactor);
        }
      }
    }
  }
}