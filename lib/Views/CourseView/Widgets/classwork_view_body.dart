import 'package:flutter/material.dart';
import 'package:gc_clone/Views/CourseView/Widgets/Classwork/classwork_list_tile.dart';
import 'package:gc_clone/utils/cores/underlined_container.dart';

class ClassworkViewBody extends StatelessWidget {
  const ClassworkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UnderlinedContainer(
          word: "Grades",
        ),
        ClassworkListTile(
          listTileName: "Quiz 2 Grades",
          color: Colors.grey[400]!,
          letter: "B",
        )
      ],
    );
  }
}
