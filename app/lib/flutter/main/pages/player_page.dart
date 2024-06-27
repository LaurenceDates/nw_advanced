import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:nw_advanced/flutter/components/input_formatters.dart';
import 'package:nw_advanced/flutter/main/main_screen.dart';
import 'package:nw_advanced/local_db/service/local_db_service.dart';
import 'package:nw_advanced/market/price_service.dart';
import 'package:nw_advanced/service/data/global_variables.dart';

import '../../../local_db/models/players.dart';
import '../../../local_db/models/servers.dart';
import '../../../service/refining/refining_service.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  List<Player> players = [];
  List<DropdownMenuItem<String>> playerNames = [];
  List<Server> servers = [];
  List<DropdownMenuItem<String>> serverNames = [];
  Player? player = GlobalVariables.player;
  Player? editedPlayer = GlobalVariables.player?.clone();

  final TextEditingController name = TextEditingController();
  String server = "";
  final TextEditingController stationTaxReduction = TextEditingController();
  final TextEditingController tradingTaxReduction = TextEditingController();

  final TextEditingController leatherworking = TextEditingController();
  final TextEditingController leatherworkingRefiningBonus =
      TextEditingController();

  final TextEditingController smelting = TextEditingController();
  final TextEditingController smeltingRefiningBonus = TextEditingController();

  final TextEditingController stonecutting = TextEditingController();
  final TextEditingController stonecuttingRefiningBonus =
      TextEditingController();

  final TextEditingController weaving = TextEditingController();
  final TextEditingController weavingRefiningBonus = TextEditingController();

  final TextEditingController woodworking = TextEditingController();
  final TextEditingController woodworkingRefiningBonus =
      TextEditingController();

  final TextEditingController arcana = TextEditingController();
  final TextEditingController arcanaMinGearScoreBonus = TextEditingController();
  final TextEditingController arcanaMaxGearScoreBonus = TextEditingController();

  final TextEditingController armoring = TextEditingController();
  final TextEditingController armoringMinGearScoreBonus =
      TextEditingController();
  final TextEditingController armoringMaxGearScoreBonus =
      TextEditingController();

  final TextEditingController cooking = TextEditingController();
  final TextEditingController cookingBonus = TextEditingController();

  final TextEditingController engineering = TextEditingController();
  final TextEditingController engineeringMinGearScoreBonus =
      TextEditingController();
  final TextEditingController engineeringMaxGearScoreBonus =
      TextEditingController();

  final TextEditingController furnishing = TextEditingController();

  final TextEditingController jewelcrafting = TextEditingController();
  final TextEditingController jewelcraftingMinGearScoreBonus =
      TextEditingController();
  final TextEditingController jewelcraftingMaxGearScoreBonus =
      TextEditingController();

  final TextEditingController weaponsmithing = TextEditingController();
  final TextEditingController weaponsmithingMinGearScoreBonus =
  TextEditingController();
  final TextEditingController weaponsmithingMaxGearScoreBonus =
  TextEditingController();

  late Future<void> future;

  @override
  // TODO: Isolation
  void initState() {
    super.initState();

    future = Future(() async {
      final Isar isar = await LocalDatabaseService.isar(await GlobalVariables.isarArgs);
      await Future.wait([
        isar.players.where().findAll().then((list) {
          players = list;
          playerNames.add(const DropdownMenuItem(value: "[New Player]", child: Text("[New Player]")));
          for (Player p in players) {
            playerNames.add(DropdownMenuItem(value: p.name, child: Text(p.name)));
          }

          if (player == null && list.isNotEmpty) {
            player = players.first;
            editedPlayer = player!.clone();
          }
          editedPlayer ??= Player.newEntity("");
        }),
        isar.servers
            .where()
            .sortByRegion()
            .thenByWorldSet()
            .thenByName()
            .findAll()
            .then((list) {
          servers = list;
          serverNames.add(const DropdownMenuItem(value: "", child: Text("")));
          for (Server s in servers) {
            serverNames
                .add(DropdownMenuItem(value: s.name, child: Text(s.name)));
          }
        })
      ]).then((value) => setPlayerData(editedPlayer));
    });
  }

  @override
  Widget build(BuildContext context) {
    return mainScreenBodyThorpe(
        child: FutureBuilder(
            future: future,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  return SingleChildScrollView(
                    child: Card(
                        color: Theme.of(context).cardColor.withOpacity(0.8),
                        margin: const EdgeInsets.all(10.0),
                        child: Container(
                            margin: const EdgeInsets.all(5.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Tooltip(
                                        message: "Switch Players",
                                        child: Icon(Icons.person)
                                      ),
                                      DropdownButton(
                                          items: playerNames,
                                          value: player?.name ?? "[New Player]",
                                          onChanged: (value) {
                                            if (value == "[New Player]") {
                                              setState(() {
                                                prepareFieldsForNewPlayer();
                                              });
                                            } else {
                                              int i = players.indexWhere((element) => element.name == value);
                                              setState(() {
                                                changePlayer(i);
                                              });
                                            }
                                          }
                                      )
                                    ],
                                  ),
                                  Row(children: [
                                    const Tooltip(
                                      message: "Name",
                                      child: Icon(Icons.edit),
                                    ),
                                    SizedBox(
                                        width: 160,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            keyboardType: TextInputType.text,
                                            controller: name,
                                            inputFormatters: [TextFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                name.text = text;
                                                editedPlayer!.name = name.text;
                                                savePlayer();
                                              });
                                            })),
                                    const SizedBox(width: 20),
                                    const Tooltip(
                                      message: "Server",
                                      child: Icon(Icons.computer),
                                    ),
                                    DropdownButton(
                                        items: serverNames,
                                        value: server,
                                        onChanged: (s) {
                                          setState(() {
                                            if (s == null || s.isEmpty) {
                                              server = "";
                                            } else {
                                              server = s;
                                            }
                                            editedPlayer!.server = server;
                                            savePlayer();
                                          });
                                        })
                                  ]),
                                  Row(children: [
                                    const Text("Trading Tax Reduction"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: tradingTaxReduction,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                tradingTaxReduction.text = text;
                                                final double? raw = double.tryParse(tradingTaxReduction.text);
                                                if (raw == null) {
                                                  editedPlayer!.tradingTaxRate = null;
                                                } else {
                                                  editedPlayer!.tradingTaxRate = 1 - (raw*10).round()/1000;
                                                }
                                                savePlayer();
                                              });
                                            })),
                                    const Text("%"),
                                    taxReductionTipsIcon()
                                  ]),
                                  Row(children: [
                                    const Text("Station Tax Reduction"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: stationTaxReduction,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                stationTaxReduction.text = text;
                                                final double? raw = double.tryParse(stationTaxReduction.text);
                                                if (raw == null) {
                                                  editedPlayer!.stationTaxRate = null;
                                                } else {
                                                  editedPlayer!.stationTaxRate = 1 - (raw*10).round()/1000;
                                                }
                                                savePlayer();
                                              });
                                            })),
                                    const Text("%"),
                                    taxReductionTipsIcon()
                                  ]),
                                  Row(children: [
                                    const Text("Leatherworking"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: leatherworking,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                leatherworking.text = text;
                                                editedPlayer!.leatherworking =
                                                    int.tryParse(
                                                        leatherworking.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips(),
                                    const SizedBox(width: 20),
                                    const Text("Bonus"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller:
                                            leatherworkingRefiningBonus,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                leatherworkingRefiningBonus.text =
                                                    text;
                                                editedPlayer!
                                                    .leatherworkingRefiningBonus =
                                                    int.tryParse(
                                                        leatherworkingRefiningBonus
                                                            .text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningBonusTips()
                                  ]),
                                  Row(children: [
                                    const Text("Smelting"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: smelting,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                smelting.text = text;
                                                editedPlayer!.smelting =
                                                    int.tryParse(smelting.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips(),
                                    const SizedBox(width: 20),
                                    const Text("Bonus"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: smeltingRefiningBonus,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                smeltingRefiningBonus.text = text;
                                                editedPlayer!
                                                    .smeltingRefiningBonus =
                                                    int.tryParse(
                                                        smeltingRefiningBonus
                                                            .text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningBonusTips()
                                  ]),
                                  Row(children: [
                                    const Text("Stonecutting"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: stonecutting,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                stonecutting.text = text;
                                                editedPlayer!.stonecutting =
                                                    int.tryParse(
                                                        stonecutting.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips(),
                                    const SizedBox(width: 20),
                                    const Text("Bonus"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: stonecuttingRefiningBonus,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                stonecuttingRefiningBonus.text =
                                                    text;
                                                editedPlayer!
                                                    .stonecuttingRefiningBonus =
                                                    int.tryParse(
                                                        stonecuttingRefiningBonus
                                                            .text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningBonusTips()
                                  ]),
                                  Row(children: [
                                    const Text("Weaving"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: weaving,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                weaving.text = text;
                                                editedPlayer!.weaving =
                                                    int.tryParse(weaving.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips(),
                                    const SizedBox(width: 20),
                                    const Text("Bonus"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: weavingRefiningBonus,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                weavingRefiningBonus.text = text;
                                                editedPlayer!
                                                    .weavingRefiningBonus =
                                                    int.tryParse(
                                                        weavingRefiningBonus
                                                            .text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningBonusTips()
                                  ]),
                                  Row(children: [
                                    const Text("Woodworking"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: woodworking,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                woodworking.text = text;
                                                editedPlayer!.woodworking =
                                                    int.tryParse(
                                                        woodworking.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips(),
                                    const SizedBox(width: 20),
                                    const Text("Bonus"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: woodworkingRefiningBonus,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                woodworkingRefiningBonus.text =
                                                    text;
                                                editedPlayer!
                                                    .woodworkingRefiningBonus =
                                                    int.tryParse(
                                                        woodworkingRefiningBonus
                                                            .text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningBonusTips()
                                  ]),
                                  Column(
                                    children: [
                                      Row(children: [
                                        const Text("Arcana"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller: arcana,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    arcana.text = text;
                                                    editedPlayer!.arcana =
                                                        int.tryParse(arcana.text);
                                                    savePlayer();
                                                  });
                                                })),
                                        refiningAndCraftingTips()
                                      ]),
                                      Row(children: [
                                        const Text("Min GS Bonus"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller:
                                                arcanaMinGearScoreBonus,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    arcanaMinGearScoreBonus.text =
                                                        text;
                                                    editedPlayer!
                                                        .arcanaMinGearScoreBonus =
                                                        int.tryParse(
                                                            arcanaMinGearScoreBonus
                                                                .text);
                                                    savePlayer();
                                                  });
                                                })),
                                        minGsBonusTips(),
                                        const SizedBox(width: 20),
                                        const Text("Max GS Bonus"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller:
                                                arcanaMaxGearScoreBonus,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    arcanaMaxGearScoreBonus.text =
                                                        text;
                                                    editedPlayer!
                                                        .arcanaMaxGearScoreBonus =
                                                        int.tryParse(
                                                            arcanaMaxGearScoreBonus
                                                                .text);
                                                    savePlayer();
                                                  });
                                                })),
                                        maxGsBonusTips()
                                      ])
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(children: [
                                        const Text("Armoring"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller: armoring,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    armoring.text = text;
                                                    editedPlayer!.armoring =
                                                        int.tryParse(
                                                            armoring.text);
                                                    savePlayer();
                                                  });
                                                })),
                                        refiningAndCraftingTips()
                                      ]),
                                      Row(children: [
                                        const Text("Min GS Bonus"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller:
                                                armoringMinGearScoreBonus,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    armoringMinGearScoreBonus
                                                        .text = text;
                                                    editedPlayer!
                                                        .armoringMinGearScoreBonus =
                                                        int.tryParse(
                                                            armoringMinGearScoreBonus
                                                                .text);
                                                    savePlayer();
                                                  });
                                                })),
                                        minGsBonusTips(),
                                        const SizedBox(width: 20),
                                        const Text("Max GS Bonus"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller:
                                                armoringMaxGearScoreBonus,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    armoringMaxGearScoreBonus
                                                        .text = text;
                                                    editedPlayer!
                                                        .armoringMaxGearScoreBonus =
                                                        int.tryParse(
                                                            armoringMaxGearScoreBonus
                                                                .text);
                                                    savePlayer();
                                                  });
                                                })),
                                        maxGsBonusTips()
                                      ])
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(children: [
                                        const Text("Engineering"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller: engineering,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    engineering.text = text;
                                                    editedPlayer!.engineering =
                                                        int.tryParse(
                                                            engineering.text);
                                                    savePlayer();
                                                  });
                                                })),
                                        refiningAndCraftingTips()
                                      ]),
                                      Row(children: [
                                        const Text("Min GS Bonus"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller:
                                                engineeringMinGearScoreBonus,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    engineeringMinGearScoreBonus
                                                        .text = text;
                                                    editedPlayer!
                                                        .engineeringMinGearScoreBonus =
                                                        int.tryParse(
                                                            engineeringMinGearScoreBonus
                                                                .text);
                                                    savePlayer();
                                                  });
                                                })),
                                        minGsBonusTips(),
                                        const SizedBox(width: 20),
                                        const Text("Max GS Bonus"),
                                        SizedBox(
                                            width: 60,
                                            height: 40,
                                            child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                textAlign: TextAlign.end,
                                                keyboardType:
                                                TextInputType.number,
                                                controller:
                                                engineeringMaxGearScoreBonus,
                                                inputFormatters: [
                                                  IntegerFormatter()
                                                ],
                                                onFieldSubmitted: (text) {
                                                  setState(() {
                                                    engineeringMaxGearScoreBonus
                                                        .text = text;
                                                    editedPlayer!
                                                        .engineeringMaxGearScoreBonus =
                                                        int.tryParse(
                                                            engineeringMaxGearScoreBonus
                                                                .text);
                                                    savePlayer();
                                                  });
                                                })),
                                        maxGsBonusTips()
                                      ])
                                    ]),
                                  Column(
                                      children: [
                                        Row(children: [
                                          const Text("Jewelcrafting"),
                                          SizedBox(
                                              width: 60,
                                              height: 40,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                  TextAlignVertical.center,
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                  TextInputType.number,
                                                  controller: jewelcrafting,
                                                  inputFormatters: [
                                                    IntegerFormatter()
                                                  ],
                                                  onFieldSubmitted: (text) {
                                                    setState(() {
                                                      jewelcrafting.text = text;
                                                      editedPlayer!.jewelcrafting =
                                                          int.tryParse(
                                                              jewelcrafting.text);
                                                      savePlayer();
                                                    });
                                                  })),
                                          refiningAndCraftingTips()
                                        ]),
                                        Row(children: [
                                          const Text("Min GS Bonus"),
                                          SizedBox(
                                              width: 60,
                                              height: 40,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                  TextAlignVertical.center,
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                  TextInputType.number,
                                                  controller:
                                                  jewelcraftingMinGearScoreBonus,
                                                  inputFormatters: [
                                                    IntegerFormatter()
                                                  ],
                                                  onFieldSubmitted: (text) {
                                                    setState(() {
                                                      jewelcraftingMinGearScoreBonus
                                                          .text = text;
                                                      editedPlayer!
                                                          .jewelcraftingMinGearScoreBonus =
                                                          int.tryParse(
                                                              jewelcraftingMinGearScoreBonus
                                                                  .text);
                                                      savePlayer();
                                                    });
                                                  })),
                                          minGsBonusTips(),
                                          const SizedBox(width: 20),
                                          const Text("Max GS Bonus"),
                                          SizedBox(
                                              width: 60,
                                              height: 40,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                  TextAlignVertical.center,
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                  TextInputType.number,
                                                  controller:
                                                  engineeringMaxGearScoreBonus,
                                                  inputFormatters: [
                                                    IntegerFormatter()
                                                  ],
                                                  onFieldSubmitted: (text) {
                                                    setState(() {
                                                      engineeringMaxGearScoreBonus
                                                          .text = text;
                                                      editedPlayer!
                                                          .engineeringMaxGearScoreBonus =
                                                          int.tryParse(
                                                              engineeringMaxGearScoreBonus
                                                                  .text);
                                                      savePlayer();
                                                    });
                                                  })),
                                          maxGsBonusTips()
                                        ])
                                      ]),
                                  Column(
                                      children: [
                                        Row(children: [
                                          const Text("Weaponsmithing"),
                                          SizedBox(
                                              width: 60,
                                              height: 40,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                  TextAlignVertical.center,
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                  TextInputType.number,
                                                  controller: weaponsmithing,
                                                  inputFormatters: [
                                                    IntegerFormatter()
                                                  ],
                                                  onFieldSubmitted: (text) {
                                                    setState(() {
                                                      weaponsmithing.text = text;
                                                      editedPlayer!.weaponsmithing =
                                                          int.tryParse(
                                                              weaponsmithing.text);
                                                      savePlayer();
                                                    });
                                                  })),
                                          refiningAndCraftingTips()
                                        ]),
                                        Row(children: [
                                          const Text("Min GS Bonus"),
                                          SizedBox(
                                              width: 60,
                                              height: 40,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                  TextAlignVertical.center,
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                  TextInputType.number,
                                                  controller:
                                                  weaponsmithingMinGearScoreBonus,
                                                  inputFormatters: [
                                                    IntegerFormatter()
                                                  ],
                                                  onFieldSubmitted: (text) {
                                                    setState(() {
                                                      weaponsmithingMinGearScoreBonus
                                                          .text = text;
                                                      editedPlayer!
                                                          .weaponsmithingMinGearScoreBonus =
                                                          int.tryParse(
                                                              weaponsmithingMinGearScoreBonus
                                                                  .text);
                                                      savePlayer();
                                                    });
                                                  })),
                                          minGsBonusTips(),
                                          const SizedBox(width: 20),
                                          const Text("Max GS Bonus"),
                                          SizedBox(
                                              width: 60,
                                              height: 40,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                  TextAlignVertical.center,
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                  TextInputType.number,
                                                  controller:
                                                  engineeringMaxGearScoreBonus,
                                                  inputFormatters: [
                                                    IntegerFormatter()
                                                  ],
                                                  onFieldSubmitted: (text) {
                                                    setState(() {
                                                      engineeringMaxGearScoreBonus
                                                          .text = text;
                                                      editedPlayer!
                                                          .engineeringMaxGearScoreBonus =
                                                          int.tryParse(
                                                              engineeringMaxGearScoreBonus
                                                                  .text);
                                                      savePlayer();
                                                    });
                                                  })),
                                          maxGsBonusTips()
                                        ])
                                      ]),
                                  Row(children: [
                                    const Text("Furnishing"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType:
                                            TextInputType.number,
                                            controller: furnishing,
                                            inputFormatters: [
                                              IntegerFormatter()
                                            ],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                furnishing.text = text;
                                                editedPlayer!.furnishing =
                                                    int.tryParse(
                                                        furnishing.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips()
                                  ]),
                                  Row(children: [
                                    const Text("Cooking"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType:
                                            TextInputType.number,
                                            controller: cooking,
                                            inputFormatters: [
                                              IntegerFormatter()
                                            ],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                cooking.text = text;
                                                editedPlayer!.cooking =
                                                    int.tryParse(
                                                        cooking.text);
                                                savePlayer();
                                              });
                                            })),
                                    refiningAndCraftingTips(),
                                    const SizedBox(width: 20),
                                    const Text("Bonus"),
                                    SizedBox(
                                        width: 60,
                                        height: 40,
                                        child: TextFormField(
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            textAlign: TextAlign.end,
                                            keyboardType: TextInputType.number,
                                            controller: cookingBonus,
                                            inputFormatters: [IntegerFormatter()],
                                            onFieldSubmitted: (text) {
                                              setState(() {
                                                cookingBonus.text =
                                                    text;
                                                editedPlayer!
                                                    .cookingBonus =
                                                    int.tryParse(
                                                        cookingBonus
                                                            .text);
                                                savePlayer();
                                              });
                                            })),
                                    cookingBonusTips()
                                  ])
                                ])
                        )),
                  );
                default:
                  return Container(
                      padding: const EdgeInsets.all(10.0),
                      child: CircularProgressIndicator(
                          color: Theme.of(context).cardColor.withOpacity(0.6),
                          strokeWidth: 6.0));
              }
            }));
  }

  // TODO: Isolation
  Future<void> savePlayer() async {
    final Isar isar = await LocalDatabaseService.isar(await GlobalVariables.isarArgs);

    // If new entity
    if (player == null &&
        editedPlayer != null &&
        editedPlayer!.name.isNotEmpty) {
      if (editedPlayer!.name.isNotEmpty) {
        player = editedPlayer;
        editedPlayer = player!.clone();
        Player playerTmp = player!;

        players.add(playerTmp);
        playerNames.add(DropdownMenuItem(value:playerTmp.name, child: Text(playerTmp.name)));

        isar.writeTxn((isar) => isar.players.put(playerTmp)).then((id) {
          player!.id = id;
          editedPlayer!.id = id;
          playerTmp.id = id;
          GlobalVariables.player = playerTmp;
          if (playerTmp.server != null) {
            if (playerTmp.server != GlobalVariables.server?.name) {
              final Iterable<Server> list =
              servers.where((element) => element.name == playerTmp.server!);
              if (list.isNotEmpty) {
                GlobalVariables.server = list.first;
              }
            }
          }
        })
        .then((v) => _updatePriceAndRecipeData());
      }
    } else {
      // If not new entity
      if (editedPlayer!.isUpdatedFrom(player!)) {
        if (player!.server != editedPlayer!.server) {
          final String oldName = player!.name;
          player = editedPlayer;
          editedPlayer = player!.clone();
          final Player playerTmp = player!;

          final int index =
              players.indexWhere((element) => element.id == playerTmp.id);

          if (index != -1) { // Fail Safe
            players.add(playerTmp);
          } else {
            players[index] = playerTmp;
          }

          if (oldName != playerTmp.name) {
            final int menuIndex = playerNames.indexWhere((element) => element.value == oldName);
            if (menuIndex == -1) { // Fail Safe
              playerNames.add(DropdownMenuItem(value: playerTmp.name, child: Text(playerTmp.name)));
            } else {
              playerNames[menuIndex] = DropdownMenuItem(value: playerTmp.name, child: Text(playerTmp.name));
            }
          }

          isar.writeTxn((isar) => isar.players.put(playerTmp)).then((v) {
            GlobalVariables.player = playerTmp;
            final Iterable<Server> list =
                servers.where((element) => element.name == playerTmp.server!);
            if (list.isNotEmpty) {
              GlobalVariables.server = list.first;
            }
          }).then((v) => _updatePriceAndRecipeData());
        } else {
          final String oldName = player!.name;
          player = editedPlayer;
          editedPlayer = player!.clone();
          Player playerTmp = player!;

          final int index =
              players.indexWhere((element) => element.id == playerTmp.id);

          if (index != -1) { // Fail Safe
            players.add(playerTmp);
          } else {
            players[index] = playerTmp;
          }

          if (oldName != playerTmp.name) {
            final int menuIndex = playerNames.indexWhere((element) => element.value == oldName);
            if (menuIndex == -1) { // Fail Safe
              playerNames.add(DropdownMenuItem(value: playerTmp.name, child: Text(playerTmp.name)));
            } else {
              playerNames[menuIndex] = DropdownMenuItem(value: playerTmp.name, child: Text(playerTmp.name));
            }
          }

          isar
              .writeTxn((isar) => isar.players.put(playerTmp))
              .then((v) => GlobalVariables.player = playerTmp)
              .then((v) => _updatePriceAndRecipeData());
        }
      }
    }
  }

  /// Clear all fields for new input. This method doesn't create the new player on the DB.
  /// Player will be created when savePlayer() method is called.
  void prepareFieldsForNewPlayer() {
    player = null;
    editedPlayer = Player.newEntity("");
    setPlayerData(editedPlayer);
  }

  Future<void> deletePlayer(int id) async {
    final Isar isar = await LocalDatabaseService.isar(await GlobalVariables.isarArgs);

    // Delete the current player
    if (editedPlayer?.id == id) {
      players.removeWhere((element) => element.id == id);
      // No Other Players
      if (players.isEmpty) {
        player = null;
        editedPlayer = Player.newEntity("");
        GlobalVariables.player = null;
        isar.writeTxn((isar) => isar.players.delete(id));
      } else {
        // Other Players exist
        player = players.first;
        editedPlayer = player!.clone();

        GlobalVariables.player = player;
        if (player!.server != null) {
          final Iterable<Server> tmp =
              servers.where((element) => element.name == player!.server);
          if (tmp.isNotEmpty) {
            GlobalVariables.server = tmp.first;
          }
        }

        isar.writeTxn((isar) => isar.players.delete(id));
      }
    } else {
      // Delete another player
      players.removeWhere((element) => element.id == id);
      isar.writeTxn((isar) => isar.players.delete(id));
    }

    LocalDatabaseService.isar(await GlobalVariables.isarArgs).then((i) => i.players.delete(id));
  }

  void changePlayer(int iterator) {
    player = players[iterator];
    editedPlayer = player!.clone();
    setPlayerData(editedPlayer);

    Future(() {
      GlobalVariables.player = player;
      if (player!.server != null) {
        final Iterable<Server> tmp =
            servers.where((element) => element.name == player!.server);
        if (tmp.isNotEmpty) {
          GlobalVariables.server = tmp.first;
        }
      }
    }).then((v) => _updatePriceAndRecipeData());
  }

  void _updatePriceAndRecipeData() {
    if (GlobalVariables.server?.id != null) {
      PriceService.getPriceFromNwMarketPrices(serverNo: GlobalVariables.server?.id)
          .then((v) => RefiningService.calculateRecipes(GlobalVariables.server!.id, GlobalVariables.player));
    }
  }

  void setPlayerData(Player? player) {
    name.text = player?.name ?? "";

    if (player?.server != null &&
        servers.any((element) => element.name == player!.server)) {
      server = player!.server!;
    } else {
      server = "";
    }

    if (player?.stationTaxRate != null) {
      stationTaxReduction.text = (((1 - player!.stationTaxRate!)*1000).round()/10).toString();
    } else {
      stationTaxReduction.text = "";
    }

    if (player?.tradingTaxRate != null) {
      tradingTaxReduction.text = (((1 - player!.tradingTaxRate!)*1000).round()/10).toString();
    } else {
      tradingTaxReduction.text = "";
    }

    if (player?.leatherworking != null) {
      leatherworking.text = player!.leatherworking!.toString();
    } else {
      leatherworking.text = "";
    }

    if (player?.leatherworkingRefiningBonus != null) {
      leatherworkingRefiningBonus.text =
          player!.leatherworkingRefiningBonus!.toString();
    } else {
      leatherworkingRefiningBonus.text = "";
    }

    if (player?.smelting != null) {
      smelting.text = player!.smelting!.toString();
    } else {
      smelting.text = "";
    }

    if (player?.smeltingRefiningBonus != null) {
      smeltingRefiningBonus.text = player!.smeltingRefiningBonus!.toString();
    } else {
      smeltingRefiningBonus.text = "";
    }

    if (player?.stonecutting != null) {
      stonecutting.text = player!.stonecutting!.toString();
    } else {
      stonecutting.text = "";
    }

    if (player?.stonecuttingRefiningBonus != null) {
      stonecuttingRefiningBonus.text =
          player!.stonecuttingRefiningBonus!.toString();
    } else {
      stonecuttingRefiningBonus.text = "";
    }

    if (player?.weaving != null) {
      weaving.text = player!.weaving!.toString();
    } else {
      weaving.text = "";
    }

    if (player?.weavingRefiningBonus != null) {
      weavingRefiningBonus.text = player!.weavingRefiningBonus!.toString();
    } else {
      weavingRefiningBonus.text = "";
    }

    if (player?.woodworking != null) {
      woodworking.text = player!.woodworking!.toString();
    } else {
      woodworking.text = "";
    }

    if (player?.woodworkingRefiningBonus != null) {
      woodworkingRefiningBonus.text =
          player!.woodworkingRefiningBonus!.toString();
    } else {
      woodworkingRefiningBonus .text = "";
    }

    if (player?.arcana != null) {
      arcana.text = player!.arcana!.toString();
    } else {
      arcana.text = "";
    }

    if (player?.arcanaMinGearScoreBonus != null) {
      arcanaMinGearScoreBonus.text =
          player!.arcanaMinGearScoreBonus!.toString();
    } else {
     arcanaMinGearScoreBonus.text = "";
    }

    if (player?.arcanaMaxGearScoreBonus != null) {
      arcanaMaxGearScoreBonus.text =
          player!.arcanaMaxGearScoreBonus!.toString();
    } else {
     arcanaMaxGearScoreBonus.text = "";
    }

    if (player?.armoring != null) {
      armoring.text = player!.armoring!.toString();
    } else {
     armoring.text = "";
    }

    if (player?.armoringMinGearScoreBonus != null) {
      armoringMinGearScoreBonus.text =
          player!.armoringMinGearScoreBonus!.toString();
    } else {
      arcanaMinGearScoreBonus.text = "";
    }

    if (player?.armoringMaxGearScoreBonus != null) {
      armoringMaxGearScoreBonus.text =
          player!.armoringMaxGearScoreBonus!.toString();
    } else {
     armoringMaxGearScoreBonus.text = "";
    }

    if (player?.cooking != null) {
      cooking.text = player!.cooking!.toString();
    } else {
     cooking.text = "";
    }

    if (player?.cookingBonus != null) {
      cookingBonus.text = player!.cookingBonus!.toString();
    } else {
     cookingBonus.text = "";
    }

    if (player?.engineering != null) {
      engineering.text = player!.engineering!.toString();
    } else {
     engineering.text = "";
    }

    if (player?.engineeringMinGearScoreBonus != null) {
      engineeringMinGearScoreBonus.text =
          player!.engineeringMinGearScoreBonus!.toString();
    } else {
     engineeringMinGearScoreBonus.text = "";
    }

    if (player?.engineeringMaxGearScoreBonus != null) {
      engineeringMaxGearScoreBonus.text =
          player!.engineeringMaxGearScoreBonus!.toString();
    } else {
     engineeringMaxGearScoreBonus.text = "";
    }

    if (player?.furnishing != null) {
      furnishing.text = player!.furnishing!.toString();
    }  else {
     furnishing.text = "";
    }

    if (player?.jewelcrafting != null) {
      jewelcrafting.text = player!.jewelcrafting!.toString();
    } else {
     jewelcrafting.text = "";
    }

    if (player?.jewelcraftingMinGearScoreBonus != null) {
      jewelcraftingMinGearScoreBonus.text =
          player!.jewelcraftingMinGearScoreBonus!.toString();
    } else {
     jewelcraftingMinGearScoreBonus.text = "";
    }

    if (player?.jewelcraftingMaxGearScoreBonus != null) {
      jewelcraftingMaxGearScoreBonus.text =
          player!.jewelcraftingMaxGearScoreBonus!.toString();
    }  else {
     jewelcraftingMaxGearScoreBonus.text = "";
    }

    if (player?.weaponsmithing != null) {
      weaponsmithing.text = player!.weaponsmithing!.toString();
    }  else {
      weaponsmithing.text = "";
    }

    if (player?.weaponsmithingMinGearScoreBonus != null) {
      weaponsmithingMinGearScoreBonus.text =
          player!.weaponsmithingMinGearScoreBonus!.toString();
    }  else {
      weaponsmithingMinGearScoreBonus.text = "";
    }

    if (player?.weaponsmithingMaxGearScoreBonus != null) {
      weaponsmithingMaxGearScoreBonus.text =
          player!.weaponsmithingMaxGearScoreBonus!.toString();
    } else {
      weaponsmithingMaxGearScoreBonus.text = "";
    }
  }

  Widget taxReductionTipsIcon() {
    return const Tooltip(
        message:
            "Tax Reduction (%) for your cost calculations. Sum of your territory standing bonus and your territory owner bonus.",
        child: Icon(Icons.info_outlined));
  }

  Widget territoryBonusTipsIcon() {
    return const Tooltip(
        message: "10 % if your faction controls Weaver's Fen, otherwise 0 %.",
        child: Icon(Icons.info_outlined));
  }

  Widget refiningAndCraftingTips() {
    return const Tooltip(
        message: "Your refining / crafting level (0 - 250).",
        child: Icon(Icons.info_outlined));
  }

  Widget refiningBonusTips() {
    return const Tooltip(
        message: "Your refining bonus from your armors (0 - 10 %).",
        child: Icon(Icons.info_outlined));
  }

  Widget minGsBonusTips() {
    return const Tooltip(
        message:
            "0 - 48. 15 from armors (18 with faction armor), 15 from trophies, 15 from food",
        child: Icon(Icons.info_outlined));
  }

  Widget maxGsBonusTips() {
    return const Tooltip(
        message:
            "0 - 58. 15 from armors (18 with faction armor), 15 from trophies, 15 from food, 5 from town project, 5 from Morning Dale territory bonus.",
        child: Icon(Icons.info_outlined));
  }

  Widget cookingBonusTips() {
    return const Tooltip(
        message:
            "0 - 62 %. 24 % from armors (30 % with faction armor), 30 % from trophies, 2% from town project.",
        child: Icon(Icons.info_outlined));
  }
}
