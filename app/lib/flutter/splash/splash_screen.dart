import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nw_advanced/flutter/main/main_screen.dart';
import 'package:nw_advanced/service/initialization/initialization_service.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Future<void> initState = InitializationService.initialize();

    return MaterialApp(
        title: "New World Advanced Tools",
        theme: ThemeData.dark(),
        home: FutureBuilder(
            future: initState,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return const MainScreen();
              } else {
                return const InitializingScreen();
              }
        }
      )
    );
  }
}

class InitializingScreen extends StatelessWidget {
  const InitializingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: initializingScreenAppBar(key: key),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/NW_HoningtheCraft_Headers_375x500_EN.png"),
              fit: BoxFit.cover
          )
        ),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Container(
                padding: const EdgeInsets.all(10.0), 
                child: CircularProgressIndicator(
                    color: Theme.of(context).cardColor.withOpacity(0.6), 
                    strokeWidth: 6.0)
            ),
            Column(
              children: [
                Flexible(flex: 1, child: Container()),
                Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Loading and Processing Data for you...",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    blurRadius: 10.0
                                )
                              ]
                          ),
                        ),
                        Text(
                          "This can take a few minutes",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    blurRadius: 10.0
                                )
                              ]
                          ),
                        )
                      ],
                    ))
              ]
            )
          ],
        )
      )
    );


    return Column(
      key: key,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(key: key),
        Text("Now Initializing", key: key,)
      ],
    );
  }

  AppBar initializingScreenAppBar({Key? key}) {
    return AppBar(
        key: key,
        leading: Image.asset("assets/NW_CreatorBadge_S_125px.png"),
        title: const Text("New World Advanced Tools")
    );
  }
}