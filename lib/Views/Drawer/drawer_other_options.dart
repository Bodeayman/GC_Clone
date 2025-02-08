import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/custom_list_tile.dart';
import 'package:gc_clone/utils/cores/functions.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final List<Function> functions = const [
    openOfflinePage,
    openGoogleHelp,
    openClassroomDrive,
    openSettings,
    openGoogleHelp,
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
          function: (context) => functions[index](context),
        ),
      ),
    );
  }
}
