import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/Views/AddView/Widgets/add_view_body.dart';
import 'package:gc_clone/cubit/main_app_bar_cubit.dart';
import 'package:gc_clone/utils/cores/more_vert_feature.dart/more_vert_feature.dart';
import 'package:go_router/go_router.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainAppBarCubit(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Join class"),
          actions: actions,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.go('/');
            },
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: AddViewBody(),
        ),
      ),
    );
  }
}
