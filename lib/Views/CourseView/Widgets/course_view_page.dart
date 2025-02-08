import 'package:flutter/material.dart';
import 'package:gc_clone/Views/CourseView/Widgets/Stream/announce_input.dart';
import 'package:gc_clone/Views/CourseView/Widgets/Stream/course_title.dart';
import 'package:gc_clone/Views/CourseView/Widgets/Stream/material_list_tile.dart';

class CourseViewPage extends StatelessWidget {
  const CourseViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CourseTitle(),
        SizedBox(
          height: 10,
        ),
        AnnounceInput(),
        SizedBox(
          height: 10,
        ),
        MaterialListTile(),
        MaterialListTile(),
      ],
    );
  }
}
