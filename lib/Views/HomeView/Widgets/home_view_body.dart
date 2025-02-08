import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/course_item.dart';
import 'package:gc_clone/Views/HomeView/Widgets/first_box.dart';
import 'package:gc_clone/constants.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FirstWindow(),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: CoursesCategory(),
        ),
      ],
    );
  }
}

class ViewToDoListButton extends StatelessWidget {
  const ViewToDoListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => (context).push('/to_do'),
      child: Text(
        "View to-do list",
        style: TextStyle(
          color: kToDoTabColor,
        ),
      ),
    );
  }
}

class CoursesCategory extends StatelessWidget {
  const CoursesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const Column(
          children: [
            CourseItem(),
            SizedBox(
              height: 7,
            ),
          ],
        );
      },
      itemCount: 7,
    );
  }
}
