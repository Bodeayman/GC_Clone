import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.iconData,
      required this.listTileName,
      required this.function});
  final IconData iconData;
  final String listTileName;
  final void Function(BuildContext)? function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function!(context),
      child: Column(
        children: [
          ListTile(
            title: Text(
              listTileName,
            ),
            leading: Icon(
              iconData,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
