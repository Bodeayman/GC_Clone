import 'package:flutter/material.dart';
import 'package:gc_clone/Views/CourseView/Widgets/course_title.dart';

class CourseViewPage extends StatelessWidget {
  const CourseViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CourseTitle(),
      ],
    );
  }
}

class AnnounceInput extends StatelessWidget {
  const AnnounceInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MaterialListTile extends StatelessWidget {
  const MaterialListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(),
      ],
    );
  }
}
