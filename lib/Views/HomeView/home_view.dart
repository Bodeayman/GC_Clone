import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/Views/HomeView/Widgets/fab.dart';
import 'package:gc_clone/Views/HomeView/Widgets/home_view_body.dart';
import 'package:gc_clone/Views/HomeView/Widgets/main_app_bar.dart';
import 'package:gc_clone/Views/Drawer/main_drawer.dart';
import 'package:gc_clone/cubits/main_app_cubit/main_app_bar_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainAppBarCubit(context),
      child: Scaffold(
        appBar: mainAppBar,
        drawer: const MainDrawer(),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: HomeViewBody(),
        ),
        floatingActionButton: const CustomFabButton(),
      ),
    );
  }
}
