import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LicenseDialog extends StatelessWidget {
  const LicenseDialog({super.key});

  static const String userLicense = "This application (NW Advanced) is developped and published by Dates Studio & Laurence Yamamoto (in 2023-2024). You (application users) are licenced to \"use\" this application (download, install, and use application functions from the application screens). Other unintended usages including debugging, reverse-engineering, and redistribution are all prohibited for end-users.";
  static const String userPrivacy = "This application DOES NOT upload any personal infomation (including your privacy data, your game account and character data, your application usage data) to the web.";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("LICENCES"),
      content:
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: const [
                    Text("YOUR LICENSE", textScaleFactor: 1.2),
                    Text(userLicense)
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: const [
                    Text("YOUR PRIVACY", textScaleFactor: 1.2),
                    Text(userPrivacy)
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    const Text("OUR LICENSES", textScaleFactor: 1.2),
                    Row(
                      children: [
                        const Text("\"Flutter\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://creativecommons.org/licenses/by/4.0/"),
                            child: const Text("CC BY 4.0"))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\"isar\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://pub.dev/packages/isar/license"),
                            child: const Text("Apache 2.0"))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\"isar_flutter_libs\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://pub.dev/packages/isar_flutter_libs/license"),
                            child: const Text("Apache 2.0"))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\"path_provider\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://pub.dev/packages/path_provider/license"),
                            child: const Text("BSD-3-Clause"))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\"http\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://pub.dev/packages/http/license"),
                            child: const Text("BSD-3-Clause"))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\"flutter_launcher_icons\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://pub.dev/packages/flutter_launcher_icons/license"),
                            child: const Text("MIT"))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\"url_launcher\" under"),
                        TextButton(
                            onPressed: () => _launchUrl("https://pub.dev/packages/url_launcher/license"),
                            child: const Text("BSD-3-Clause"))
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: const [
                    Text("New World, New World Aeternum is published by Amazon Games, and the copy rights of the images, logos and other contents from the game all belong to Amazon Games.")
                  ],
                ),
              ),
            ]
          ),
        ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"))
      ],
    );
  }

  Future<void> _launchUrl(String uri) async {
    if (!await launch(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
