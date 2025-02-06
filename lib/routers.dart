import 'package:flutter/material.dart';
import 'package:gc_clone/Views/AddView/add_view.dart';
import 'package:gc_clone/Views/CourseView/course_view.dart';
import 'package:gc_clone/Views/HomeView/home_view.dart';
import 'package:gc_clone/Views/NotificationsView/notification_view.dart';
import 'package:gc_clone/Views/SettingsView/settings_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/joinCourse',
      builder: (context, state) => const AddView(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationView(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsView(),
    ),
    GoRoute(
      path: '/course',
      builder: (context, state) => const CourseView(),
    ),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  },
);
