import 'package:flutter/material.dart';
import 'package:gc_clone/Views/TodoListView/Widgets/assign_body.dart';
import 'package:gc_clone/Views/TodoListView/Widgets/done_body.dart';
import 'package:gc_clone/Views/TodoListView/Widgets/missing_body.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("To-do"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Assigned"),
              ),
              Tab(
                child: Text("Missing"),
              ),
              Tab(
                child: Text("Done"),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AssignBody(),
            MissingBody(),
            DoneBody(),
          ],
        ),
      ),
    );
  }
}
