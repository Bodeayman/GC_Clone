import 'package:flutter/material.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile(
      {super.key,
      required this.listTileName,
      required this.color,
      required this.letter});
  final Color color;
  final String letter;
  final String listTileName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("This function is not implemented yet");
      },
      child: Column(
        children: [
          ListTile(
            subtitle: const Text(
              "Section 1 . See details",
            ),
            title: Text(
              listTileName,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
              ),
              maxLines: 1,
            ),
            leading: CourseIcon(
              color: color,
              letter: letter,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CourseIcon extends StatelessWidget {
  const CourseIcon({super.key, required this.letter, required this.color});
  final String letter;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
