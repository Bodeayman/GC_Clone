import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/custom_list_tile.dart';
import 'package:gc_clone/Views/SettingsView/settings_view.dart';

class DrawerOtherOptions extends StatelessWidget {
  const DrawerOtherOptions({super.key});
  final List<String> otherTexts = const [
    "Offline files",
    "Archived classes",
    "Classroom folders",
    "Settings",
    "Help"
  ];
  final List<IconData> icons = const [
    Icons.arrow_downward,
    Icons.archive,
    Icons.folder,
    Icons.settings,
    Icons.help,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: icons.length,
        itemBuilder: (context, index) => CustomListTile(
          iconData: icons[index],
          listTileName: otherTexts[index],
          function: (context) {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SettingsView(),
              ),
            );
          },
        ),
      ),
    );
  }
}
