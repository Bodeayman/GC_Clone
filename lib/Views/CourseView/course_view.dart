import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/Views/CourseView/Widgets/course_view_body.dart';
import 'package:gc_clone/Views/CourseView/Widgets/course_view_page.dart';
import 'package:gc_clone/Views/CourseView/Widgets/custom_nav_bar.dart';
import 'package:gc_clone/Views/HomeView/Widgets/main_drawer.dart';
import 'package:gc_clone/cubits/main_app_cubit/main_app_bar_cubit.dart';
import 'package:gc_clone/cubits/stream_nav_bar/stream_nav_bar_cubit.dart';
import 'package:gc_clone/utils/cores/more_vert_feature.dart/more_vert_feature.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StreamNavBarCubit(0),
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CourseViewBody(),
        ),
        bottomNavigationBar: const CourseBottomNavBar(),
      ),
    );
  }
}
