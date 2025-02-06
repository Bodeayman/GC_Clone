import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/Views/CourseView/Widgets/classwork_view_body.dart';
import 'package:gc_clone/Views/CourseView/Widgets/course_view_page.dart';
import 'package:gc_clone/Views/CourseView/Widgets/people_view_body.dart';
import 'package:gc_clone/cubits/stream_nav_bar/stream_nav_bar_cubit.dart';

class CourseViewBody extends StatelessWidget {
  const CourseViewBody({super.key});
  final List<Widget> pages = const [
    CourseViewPage(),
    ClassworkViewBody(),
    PeopleViewBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StreamNavBarCubit, StreamNavBarState>(
      builder: (context, state) {
        int index = 0;

        if (state is StreamNavBarInitial) {
          index = state.counter;
        }

        return IndexedStack(index: index, children: pages);
      },
    );
  }
}
