import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_clone/Views/HomeView/home_view.dart';
import 'package:gc_clone/Views/NotificationsView/Widgets/notification_body_view.dart';
import 'package:gc_clone/cubit/main_app_bar_cubit.dart';
import 'package:gc_clone/utils/cores/more_vert_feature.dart/more_vert_feature.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainAppBarCubit(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Notifications"),
          actions: actions,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const NotificationBodyView(),
      ),
    );
  }
}
