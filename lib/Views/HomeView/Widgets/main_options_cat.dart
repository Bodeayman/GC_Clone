import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/custom_list_tile.dart';
import 'package:gc_clone/Views/HomeView/home_view.dart';
import 'package:gc_clone/utils/cores/functions.dart';
import 'package:go_router/go_router.dart';

class MainOptionsCategory extends StatelessWidget {
  const MainOptionsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(
          iconData: Icons.home,
          listTileName: "Classes",
          function: (context) {
            Navigator.of(context).pop();
            context.go("/");
          },
        ),
        CustomListTile(
          iconData: Icons.date_range,
          listTileName: "Calender",
          function: (context) => openGoogleCalendar(context),
        ),
        CustomListTile(
          iconData: Icons.notifications,
          listTileName: "Notifications",
          function: (context) {
            Navigator.of(context).pop();
            context.push("/notifications");
          },
        ),
      ],
    );
  }
}
