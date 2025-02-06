import 'package:flutter/material.dart';
import 'package:gc_clone/Views/CourseView/Widgets/People/person_tile.dart';
import 'package:gc_clone/Views/CourseView/Widgets/People/underlined_container.dart';
import 'package:gc_clone/Views/HomeView/Widgets/course_list_tile.dart';
import 'package:gc_clone/constants.dart';

class PeopleViewBody extends StatelessWidget {
  const PeopleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UnderlinedContainer(word: "Teachers"),
        const SizedBox(
          height: 5,
        ),
        PersonTile(
          personName: "Ahmed Etman",
          courseIcon: CourseIcon(
            color: Colors.green,
            letter: "A",
          ),
        ),
        UnderlinedContainer(word: "Classmates"),
        const SizedBox(
          height: 5,
        ),
        PersonTile(
          personName: "Abdullah Ayman",
          courseIcon: CourseIcon(
            color: Colors.red,
            letter: "A",
          ),
        ),
        PersonTile(
          personName: "Abdelrahman mohamed",
          courseIcon: CourseIcon(
            color: Colors.blue,
            letter: "A",
          ),
        ),
      ],
    );
  }
}
