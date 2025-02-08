import 'package:flutter/material.dart';
import 'package:gc_clone/Views/Drawer/course_list_tile.dart';

class PersonTile extends StatelessWidget {
  const PersonTile(
      {super.key, required this.personName, required this.courseIcon});
  final String personName;
  final CourseIcon courseIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            personName,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.mail),
            onPressed: () {},
          ),
          leading: courseIcon,
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
