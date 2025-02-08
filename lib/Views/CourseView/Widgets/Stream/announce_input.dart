import 'package:flutter/material.dart';
import 'package:gc_clone/Views/Drawer/course_list_tile.dart';
import 'package:gc_clone/constants.dart';
import 'package:gc_clone/utils/border_style.dart';

class AnnounceInput extends StatelessWidget {
  const AnnounceInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBorderStyle,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            const CourseIcon(
              color: Colors.green,
              letter: 'A',
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Announce something to your class",
              style: TextStyle(
                fontSize: 10,
                color: kTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
