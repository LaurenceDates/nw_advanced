import 'package:isar/isar.dart';
import 'package:nw_advanced/exceptions/application_exceptions.dart';

import 'items.dart';

part 'prices.g.dart';

@Collection()
class Price {
  int id = Isar.autoIncrement;
  @Index(composite: [CompositeIndex("itemId", type: IndexType.hash, caseSensitive: false)], unique: true)
  @Index(composite: [CompositeIndex("itemName", type: IndexType.value, caseSensitive: false)])
  late int serverId;
  late String itemId;
  late String itemName;
  double? price;
  int? availability;
  int? lastUpdated;
  double? highestBuyOrder;
  int? qty;
  double? priceDifference;
  double? priceDifferenceFactor;

  final IsarLink<Item> item = IsarLink<Item>();

  Price();

  Price.newEntity(
      this.serverId,
      this.itemId,
      this.itemName,
      this.price,
      this.availability,
      this.lastUpdated,
      this.highestBuyOrder,
      this.qty,
      this.priceDifference,
      this.priceDifferenceFactor);

  factory Price.fromMap(Map<String, dynamic> map, int serverNo) {
    dynamic hbo1 = map["HighestBuyOrder"];
    double? hbo2;
    if (hbo1 is double) {
      hbo2 = hbo1;
    } else if (hbo1 is int) {
      hbo2 = hbo1 + 0.0;
    }
    final Price entity = Price.newEntity(
        serverNo, map["ItemId"], map["ItemName"], double.tryParse(map["Price"] ?? ""), map["Availability"], DateTime.parse(map["LastUpdated"]).millisecondsSinceEpoch, hbo2, map["Qty"], null, null);

    if (entity.price != null) {
      if (entity.highestBuyOrder != null) {
        entity.priceDifference = entity.price! - entity.highestBuyOrder!;
        entity.priceDifferenceFactor = entity.price!/entity.highestBuyOrder!;
      } else {
        entity.priceDifference = entity.price!;
        entity.priceDifferenceFactor = 1/0;
      }
    }

    return entity;
  }

  Price update(Price updateEntity) {
    if (!(serverId == updateEntity.serverId && itemId == updateEntity.itemId)) {
      throw UnexpectedApplicationException(message: "Price.update() method is called for a different entity.");
    }

    price = updateEntity.price;
    availability = updateEntity.availability;
    lastUpdated = updateEntity.lastUpdated;
    highestBuyOrder = updateEntity.highestBuyOrder;
    qty = updateEntity.qty;
    priceDifference = updateEntity.priceDifference;
    priceDifferenceFactor = updateEntity.priceDifferenceFactor;

    return this;
  }

  Map<String, dynamic> get toMap => {
    "ServerId": serverId,
    "ItemId": itemId,
    "ItemName": itemName,
    "Price": price,
    "Availability": availability,
    "LastUpdated": lastUpdated,
    "HighestBuyOrder": highestBuyOrder,
    "Qty": qty,
    "PriceDifference": priceDifference,
    "PriceDifferenceFactor": priceDifferenceFactor
  };

  @override
  String toString() {
    return "Price ${toMap.toString()}";
  }
}