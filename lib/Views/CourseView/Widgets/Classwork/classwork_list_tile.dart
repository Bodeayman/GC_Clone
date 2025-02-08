import 'package:flutter/material.dart';
import 'package:gc_clone/Views/Drawer/course_list_tile.dart';

class ClassworkListTile extends StatelessWidget {
  const ClassworkListTile(
      {super.key,
      required this.listTileName,
      required this.color,
      required this.letter});
  final String listTileName;
  final Color color;
  final String letter;
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
              "No due date",
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
            trailing: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("5/5"),
                Text("Not turned in"),
              ],
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
