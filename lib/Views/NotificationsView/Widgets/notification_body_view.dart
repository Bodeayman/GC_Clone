import 'package:flutter/material.dart';
import 'package:gc_clone/Views/NotificationsView/Widgets/notification_list_tile.dart';

class NotificationBodyView extends StatelessWidget {
  const NotificationBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const NotificationListTile(
          color: Colors.green,
          letter: "M",
          listTileName: "New Material from Roba Mohamed",
        );
      },
    );
  }
}
