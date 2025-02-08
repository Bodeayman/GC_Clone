import 'package:flutter/material.dart';
import 'package:gc_clone/Views/Drawer/course_list_tile.dart';
import 'package:gc_clone/constants.dart';
import 'package:gc_clone/utils/border_style.dart';

class MaterialListTile extends StatelessWidget {
  const MaterialListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            decoration: kBorderStyle.copyWith(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kBorderCurver),
                topRight: Radius.circular(kBorderCurver),
              ),
            ),
            child: CourseListTile(
              listTileName: "New material:Course Syllabus",
              color: Colors.red[400] ?? Colors.red,
              letter: 'B',
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            decoration: kBorderStyle.copyWith(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(kBorderCurver),
                bottomRight: Radius.circular(kBorderCurver),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Text(
                "Add class Comment",
                style: TextStyle(
                  color: kTextColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
