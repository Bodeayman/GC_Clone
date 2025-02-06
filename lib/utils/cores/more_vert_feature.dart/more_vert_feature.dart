import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/cubits/main_app_cubit/main_app_bar_cubit.dart';
import 'package:gc_clone/utils/cores/functions.dart';

List<Widget> actions = [
  BlocBuilder<MainAppBarCubit, MainAppBarState>(
    builder: (context, state) {
      if (state is MainAppBarInitial) {
        return IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () => openMenu(context),
        );
      }
      return const CircularProgressIndicator();
    },
  )
];
