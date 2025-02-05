import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/custom_list_tile.dart';
import 'package:gc_clone/Views/HomeView/home_view.dart';
import 'package:gc_clone/Views/NotificationsView/notification_view.dart';
import 'package:gc_clone/utils/cores/functions.dart';

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
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
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
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const NotificationView(),
              ),
            );
          },
        ),
      ],
    );
  }
}
