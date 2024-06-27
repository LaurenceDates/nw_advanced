import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nw_advanced/exceptions/application_exceptions.dart';
import 'package:nw_advanced/flutter/main/main_screen.dart';
import 'package:nw_advanced/service/data/global_variables.dart';
import 'package:nw_advanced/service/price/price_service.dart';
import 'package:nw_advanced/service/refining/refining_service.dart';
import '../../../local_db/models/calculated_recipes.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController tier = TextEditingController();
  final TextEditingController rarity = TextEditingController();
  final TextEditingController type = TextEditingController();
  final TextEditingController priceMin = TextEditingController();
  final TextEditingController priceMax = TextEditingController();
  final TextEditingController availabilityMin = TextEditingController(text: "10");
  final TextEditingController availabilityMax = TextEditingController();
  final TextEditingController buyOrderMax = TextEditingController();
  final TextEditingController buyOrderMin = TextEditingController();
  final TextEditingController qtyMin = TextEditingController();
  final TextEditingController qtyMax = TextEditingController();
  final TextEditingController priceDifference = TextEditingController(text: "100.00");
  final TextEditingController priceDifferenceMagnification = TextEditingController(text: "1");
  ItemSort sort = ItemSort.priceDifferenceDesc;
  final TextEditingController limit = TextEditingController();
  
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return mainScreenBodyLogo(
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Tooltip(
                        message: "Price Difference [SELL - BUY] & [SELL / BUY]",
                        child: Icon(Icons.currency_exchange)
                    ),
                    SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                            textAlign: TextAlign.end,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.number,
                            controller: priceDifference,
                            inputFormatters: [PriceFormatter()],
                            onFieldSubmitted: (text) {
                              setState(() {
                                priceDifference.text = text;
                              });
                            })
                    ),
                    const SizedBox(width: 1.0),
                    SizedBox(
                        width: 40,
                        height: 40,
                        child: TextFormField(
                          textAlign: TextAlign.end,
                          textAlignVertical: TextAlignVertical.center,
                          controller: priceDifferenceMagnification,
                          keyboardType: TextInputType.number,
                          inputFormatters: [MultiplierFormatter()],
                          onFieldSubmitted: (text) {
                            setState(() {
                              priceDifferenceMagnification.text = text;
                            });
                          },
                        )
                    )
                  ]
              ),
              const SizedBox(width: 5.0),
              Row(
                  children: [
                    const Tooltip(
                        message: "Number of Sell Orders",
                        child: Icon(Icons.view_agenda)
                    ),
                    SizedBox(
                        width: 40,
                        height: 40,
                        child: TextFormField(
                          textAlign: TextAlign.end,
                          textAlignVertical: TextAlignVertical.center,
                          controller: availabilityMin,
                          keyboardType: TextInputType.number,
                          inputFormatters: [IntegerFormatter()],
                          onFieldSubmitted: (text) {
                            setState(() {
                              availabilityMin.text = text;
                            });
                          },
                        )
                    ),
                  ]),
              const SizedBox(width: 5.0),
              IconButton(
                  tooltip: "SEARCH",
                  onPressed: () async {
                    await refresh(serverId: GlobalVariables.server?.nwmpNo, name: name.text, tier: int.tryParse(tier.text), rarity: int.tryParse(rarity.text), type: type.text, priceMin: double.tryParse(priceMin.text), priceMax: double.tryParse(priceMax.text), availabilityMin: int.tryParse(availabilityMin.text), availabilityMax: int.tryParse(availabilityMax.text), buyOrderMax: double.tryParse(buyOrderMax.text), buyOrderMin: double.tryParse(buyOrderMin.text), qtyMin: int.tryParse(qtyMin.text), qtyMax:  int.tryParse(qtyMax.text), priceDifference: double.tryParse(priceDifference.text), priceDifferenceMagnification: double.tryParse(priceDifferenceMagnification.text), sort: sort, limit: int.tryParse(limit.text));
                    setState((){});
                  },
                  icon: const Icon(Icons.search)
              ),
              // Dialog Button
              IconButton(
                  tooltip: "Detailed Search",
                  icon: const Icon(Icons.menu),
                  onPressed: () async {
                    await showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("MARKET SEARCH"),
                              IconButton(
                                  tooltip: "Clear All",
                                  icon: const Icon(Icons.refresh),
                                  onPressed: () {
                                    setState(() {
                                      name.clear();
                                      tier.clear();
                                      rarity.clear();
                                      type.clear();
                                      priceMin.clear();
                                      priceMax.clear();
                                      availabilityMin.clear();
                                      availabilityMax.clear();
                                      buyOrderMax.clear();
                                      buyOrderMin.clear();
                                      qtyMin.clear();
                                      qtyMax.clear();
                                      priceDifference.clear();
                                      priceDifferenceMagnification.clear();
                                      sort = ItemSort.priceDifferenceDesc;
                                      limit.clear();
                                    });
                                  }
                              )
                            ],
                          ),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Tooltip(
                                            message: "Price Difference [SELL - BUY] & [SELL / BUY]",
                                            child: Icon(Icons.currency_exchange)
                                        ),
                                        SizedBox(
                                            width: 80,
                                            height: 40,
                                            child: TextFormField(
                                                textAlign: TextAlign.end,
                                                textAlignVertical: TextAlignVertical.center,
                                                // initialValue: priceDifference?.toString() ?? "",
                                                controller: priceDifference,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [PriceFormatter()],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    priceDifference.text = text;
                                                  });
                                                }
                                            )
                                        ),
                                        const SizedBox(width: 1.0),
                                        SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: TextFormField(
                                              textAlign: TextAlign.end,
                                              textAlignVertical: TextAlignVertical.center,
                                              controller: priceDifferenceMagnification,
                                              keyboardType: TextInputType.number,
                                              inputFormatters: [MultiplierFormatter()],
                                              onFieldSubmitted: (text) {
                                                setState(() {
                                                  priceDifferenceMagnification.text = text;
                                                });
                                              },
                                            )
                                        )
                                      ]
                                  ),
                                  const SizedBox(width: 5.0),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Tooltip(
                                            message: "Number of Sell Orders",
                                            child: Icon(Icons.view_agenda)
                                        ),
                                        SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: TextFormField(
                                              textAlign: TextAlign.end,
                                              textAlignVertical: TextAlignVertical.center,
                                              controller: availabilityMin,
                                              keyboardType: TextInputType.number,
                                              inputFormatters: [IntegerFormatter()],
                                              onFieldSubmitted: (text) {
                                                setState(() {
                                                  availabilityMin.text = text;
                                                });
                                              },
                                            )
                                        ),
                                      ])
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Tooltip(
                                      message: "Sell Order Price",
                                      child: Icon(Icons.arrow_circle_down)
                                  ),
                                  SizedBox(
                                      width: 80,
                                      height: 40,
                                      child: TextFormField(
                                          textAlign: TextAlign.end,
                                          textAlignVertical: TextAlignVertical.center,
                                          controller: priceMin,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [PriceFormatter()],
                                          onFieldSubmitted: (text) {
                                            setState(() {
                                              priceMin.text = text;
                                            });
                                          }
                                      )
                                  ),
                                  const Text("-",),
                                  SizedBox(
                                      width: 80,
                                      height: 40,
                                      child: TextFormField(
                                        textAlign: TextAlign.end,
                                        textAlignVertical: TextAlignVertical.center,
                                        controller: priceMax,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [PriceFormatter()],
                                        onFieldSubmitted: (text) {
                                          setState(() {
                                            priceMax.text = text;
                                          });
                                        },
                                      )
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Tooltip(
                                      message: "Buy Order Price",
                                      child: Icon(Icons.arrow_circle_up)
                                  ),
                                  SizedBox(
                                      width: 80,
                                      height: 40,
                                      child: TextFormField(
                                          textAlign: TextAlign.end,
                                          textAlignVertical: TextAlignVertical.center,
                                          controller: buyOrderMin,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [PriceFormatter()],
                                          onFieldSubmitted: (text) {
                                            setState(() {
                                              buyOrderMin.text = text;
                                            });
                                          }
                                      )
                                  ),
                                  const Text("-",),
                                  SizedBox(
                                      width: 80,
                                      height: 40,
                                      child: TextFormField(
                                        textAlign: TextAlign.end,
                                        textAlignVertical: TextAlignVertical.center,
                                        controller: buyOrderMax,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [PriceFormatter()],
                                        onFieldSubmitted: (text) {
                                          setState(() {
                                            buyOrderMax.text = text;
                                          });
                                        },
                                      )
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Tooltip(
                                      message: "Item Name",
                                      child: Icon(Icons.title)
                                  ),
                                  SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextFormField(
                                        textAlign: TextAlign.start,
                                        textAlignVertical: TextAlignVertical.center,
                                        controller: name,
                                        keyboardType: TextInputType.text,
                                        inputFormatters: [ItemNameFormatter()],
                                        onFieldSubmitted: (text) {
                                          setState(() {
                                            name.text = text;
                                          });
                                        },
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                          actions: [
                            IconButton(
                                onPressed: () async {
                                  await refresh(serverId: GlobalVariables.server?.nwmpNo, playerId: GlobalVariables.player?.id, name: name.text, tier: int.tryParse(tier.text), rarity: int.tryParse(rarity.text), type: type.text, priceMin: double.tryParse(priceMin.text), priceMax: double.tryParse(priceMax.text), availabilityMin: int.tryParse(availabilityMin.text), availabilityMax: int.tryParse(availabilityMax.text), buyOrderMax: double.tryParse(buyOrderMax.text), buyOrderMin: double.tryParse(buyOrderMin.text), qtyMin: int.tryParse(qtyMin.text), qtyMax: int.tryParse(qtyMax.text), priceDifference: double.tryParse(priceDifference.text), priceDifferenceMagnification: double.tryParse(priceDifferenceMagnification.text), sort: sort, limit: int.tryParse(limit.text));
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                },
                                icon: const Icon(Icons.search),
                                tooltip: "SEARCH"
                            ),
                          ],
                        )
                    );
                  }
              )
            ],
          ),
          Flexible(
              child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: widgets
              ))
        ],
      )
    );
  }

  Future<void> refresh({int? serverId, int? playerId, String? name, int? tier, int? rarity, String? type, double? priceMin, double? priceMax, int? availabilityMin, int? availabilityMax, double? buyOrderMax, double? buyOrderMin, int? qtyMin, int? qtyMax, double? priceDifference, double? priceDifferenceMagnification, ItemSort sort = ItemSort.priceDifferenceDesc, int? limit}) {
    if (serverId == null) {
      serverId = GlobalVariables.server?.id;
      if (serverId == null) {
        throw UnexpectedApplicationException(message: "Unable to start price search without specified server_id given");
      }
    }
    if (playerId == null) {
      playerId = GlobalVariables.player?.id;
    }

    priceMin ??= 0.0;  priceMax ??= 500000.0; availabilityMin ??= 1;

    String? name1; if(name == null || name.isEmpty) {name1 = null;} else {name1 = name;}
    String? type1; if(type == null || type.isEmpty) {type1 = null;} else {type1 = name;}

    return PriceService.findItems(server: serverId, name: name1, tier: tier, rarity: rarity, type: type1, priceMin: priceMin, priceMax: priceMax, availabilityMin: availabilityMin, availabilityMax: availabilityMax, buyOrderMax: buyOrderMax, buyOrderMin: buyOrderMin, qtyMin: qtyMin, qtyMax: qtyMax, priceDifference: priceDifference, priceDifferenceMagnification: priceDifferenceMagnification, sort: sort, limit: limit)
        .then((list) async {
          final List<CalculatedRecipe?> list2 = [];
          for(PriceSearchResult p in list) {
            CalculatedRecipe? r = await RefiningService.findLowestCostRecipeByCraftedItemId(serverId!, playerId, p.itemId);
            list2.add(r);
          }
          return [list, list2];
        })
        .then((list) => createList(list[0] as List<PriceSearchResult>, list[1] as List<CalculatedRecipe?>))
        .then((list) {
          widgets = list;
          return null;
        }
    );
  }

  List<Widget> createList(List<PriceSearchResult> price, List<CalculatedRecipe?> recipes) {
    final List<Widget> widgets = [];
    final int datetime = DateTime.now().millisecondsSinceEpoch;

    for (int i = 0; i< price.length; i++){
      Color color;
      String lastUpdateMessage;

      int duration = datetime - price[i].lastUpdated!;
      if (duration > const Duration(days: 7).inMilliseconds) {
        color = Colors.red;
      } else if (duration > const Duration(days: 3).inMilliseconds) {
        color = Colors.orange;
      } else {
        color = Colors.blue;
      }

      int days = (duration / const Duration(days: 1).inMilliseconds).floor();
      if (days > 1) {lastUpdateMessage = "Last Update: $days days ago";}
      else if (days == 1){lastUpdateMessage = "Last Update: yesterday";}
      else {lastUpdateMessage = "Last Update: today";}

      late String buy;
      if (price[i].highestBuyOrder != null) {
        buy = price[i].highestBuyOrder!.toStringAsFixed(2);
        buy = buy.padLeft(10);
      } else {
        buy = "          ";
      }

      late String sell;
      if (price[i].price != null) {
        sell = price[i].price!.toStringAsFixed(2);
        sell = sell.padLeft(10);
      } else {
        sell = "          ";
      }

      late String avl;
      if (price[i].availability != null) {
        avl = price[i].availability.toString().padLeft(4);
      } else {
        sell = "   0";
      }

      String? craft;
      if (recipes[i] != null) {
        craft = (((recipes[i]!.cost*100).round())/100).toString().padLeft(10);
      }

      Widget craftingWidget;
      if (craft != null) {
        craftingWidget = Row(
          children: [
            const Tooltip(
              message: "Crafting Cost",
              child: Icon(Icons.build),
            ),
            Text(craft)]);
      } else {
        craftingWidget = Container();
      }

      final Widget widget = Card(
        color: Theme.of(context).cardColor.withOpacity(0.8),
        margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
          child: Column(
            children: [
              Text(price[i].itemName, textScaleFactor: 1.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          const Tooltip(
                            message: "SELL",
                            child: Icon(Icons.arrow_circle_down),
                          ),
                          Tooltip(
                              message: lastUpdateMessage,
                              child:Text(sell, style: TextStyle(color: color))
                          )
                        ],
                      )),
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          const Tooltip(
                            message: "BUY",
                            child: Icon(Icons.arrow_circle_up),
                          ),
                          Tooltip(
                              message: lastUpdateMessage,
                              child: Text(buy, style: TextStyle(color: color))
                          )
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const Tooltip(
                            message: "Number of Sell orders",
                            child: Icon(Icons.view_agenda),
                          ),
                          Tooltip(
                              message: lastUpdateMessage,
                              child: Text(avl, style: TextStyle(color: color))
                          )
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: craftingWidget
                  )
                ],
              )
            ],
          )
        )
      );

      widgets.add(widget);
    }

    return widgets;
  }
}

class PriceFormatter extends TextInputFormatter {
  static final RegExp regexp1 = RegExp(r"^\d{0,6}$");
  static final RegExp regexp2 = RegExp(r"^\d{0,6}\.\d{0,2}$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (regexp1.hasMatch(newValue.text) || regexp2.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

class MultiplierFormatter extends TextInputFormatter {
  static final RegExp regexp1 = RegExp(r"^\d?$");
  static final RegExp regexp2 = RegExp(r"^\d\.\d{0,2}$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (regexp1.hasMatch(newValue.text) || regexp2.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

class IntegerFormatter extends TextInputFormatter {
  static final RegExp regexp = RegExp(r"^\d*$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (regexp.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

class ItemNameFormatter extends TextInputFormatter {
  static final RegExp regexp = RegExp(r"^[\w\x20]*$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (regexp.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}