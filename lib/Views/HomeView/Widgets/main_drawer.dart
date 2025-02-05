import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/course_list_tile.dart';
import 'package:gc_clone/Views/HomeView/Widgets/drawer_other_options.dart';
import 'package:gc_clone/Views/HomeView/Widgets/main_options_cat.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          SizedBox(
            height: 5,
          ),
          GoogleTitle(),
          Divider(
            color: Colors.grey,
          ),
          MainOptionsCategory(),
          Divider(
            color: Colors.grey,
            indent: 50,
          ),
          EnrolledCoursesCategory(),
          Divider(
            color: Colors.grey,
            indent: 50,
          ),
          DrawerOtherOptions(),
        ],
      ),
    );
  }
}

class GoogleTitle extends StatelessWidget {
  const GoogleTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Image.asset("assets/google.png"),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          style: GoogleFonts.poppins(
            fontSize: 15,
          ),
          "Classroom",
        ),
      ],
    );
  }
}

class EnrolledCoursesCategory extends StatelessWidget {
  const EnrolledCoursesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Enrolled"),
        const SizedBox(
          height: 5,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => const CourseListTile(
            listTileName: "Engineering Project Management",
            color: Colors.blue,
            letter: "E",
          ),
        )
      ],
    );
  }
}
