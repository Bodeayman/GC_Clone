import 'package:flutter/material.dart';
import 'package:gc_clone/Views/SettingsView/Widgets/settings_list_tile.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});
  final List<String> settingsNames = const [
    "Account Settings",
    "Change name",
    "Notifications",
    "Choose theme",
    "Sync over cellular data",
    "About"
  ];

  final List<String> settingsInstructions = const [
    "Update your photo, password",
    "to change your name , ask your admin . Learn more",
    "Choose which ones you get on this device and by email",
    "System default",
    "",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            SettingsListTile(
              title: settingsNames[index],
              subtitle: settingsInstructions[index],
              callBackFunction: (context) {
                debugPrint("Not implemeneted");
              },
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        );
      },
      itemCount: settingsNames.length,
    ));
  }
}
