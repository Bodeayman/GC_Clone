import 'package:flutter/material.dart';
import 'package:gc_clone/Views/OfflineView/Widgets/offline_view_body.dart';

class OfflineView extends StatelessWidget {
  const OfflineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offline files"),
      ),
      body: const OfflineViewBody(),
    );
  }
}
