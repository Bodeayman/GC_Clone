import 'package:flutter/material.dart';

class MissingBody extends StatelessWidget {
  const MissingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("this is the missing page"),
      ],
    );
  }
}
