import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nw_advanced/flutter/main/dialogs/license_dialog.dart';
import 'package:nw_advanced/flutter/main/pages/market_page.dart';
import 'package:nw_advanced/flutter/main/pages/player_page.dart';
import 'package:path_provider/path_provider.dart';

part 'main_screen_widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          appBar: mainScreenAppBar(context: context),
          body: const TabBarView(
              children: [
                MarketPage(),
                PlayerPage()
              ])
      )
    );
  }

  AppBar mainScreenAppBar({Key? key, required BuildContext context}) {
    return AppBar(
      key: key,
      leading: Image.asset("assets/NW_CreatorBadge_S_125px.png"),
      title: const Text("New World Advanced Tools"),
      actions: [
        menu(context)
      ],
      bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.currency_exchange)),
            Tab(icon: Icon(Icons.person))
          ]),
    );
  }

  Widget menu(BuildContext context) {
    return PopupMenuButton(
        child: const Icon(Icons.menu),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
                value: "license",
                child: Row(
                    children: const [
                      Icon(Icons.account_balance),
                      Text("License")
                    ]
                )),
            PopupMenuItem(
              value: "refresh",
                child: Row(
                  children: const [
                    Icon(Icons.recycling),
                    Text("Refresh App")
                  ]
                ))
          ];
        },
      onSelected: (value) {
          if (value == "license") {
            showDialog(
                context: context,
                builder: (context) => LicenseDialog(key: key));
          } else if (value == "refresh") {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Warnings!"),
                    content: const Text("This function will DELETE ALL THE APPLICATION DATA from your device! Your character data will be deleted and you need to input it again. Please use this function only if your application is not working properly.\n  Application will be closed."),
                    actions: [
                      TextButton(onPressed: () {Navigator.pop(context);}, child: const Text("CANCEL")),
                      TextButton(onPressed: () {
                        getApplicationSupportDirectory().then((value) => value.delete(recursive: true))
                            .then((value) => SystemNavigator.pop());
                      }, child: const Text("REFRESH"))
                    ],
                  );
                });
          }
      },
    );
  }
}
