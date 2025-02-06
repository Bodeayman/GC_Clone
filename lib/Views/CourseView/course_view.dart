import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/Views/CourseView/Widgets/course_view_page.dart';
import 'package:gc_clone/Views/HomeView/Widgets/main_drawer.dart';
import 'package:gc_clone/cubit/main_app_bar_cubit.dart';
import 'package:gc_clone/utils/cores/more_vert_feature.dart/more_vert_feature.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainAppBarCubit(context),
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          actions: actions,
        ),
        body: const CourseViewPage(),
        bottomNavigationBar: const CourseBottomNavBar(),
      ),
    );
  }
}

class CourseBottomNavBar extends StatelessWidget {
  const CourseBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Stream"),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: "Classwork",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "People",
        )
      ],
      elevation: 20,
    );
  }
}
