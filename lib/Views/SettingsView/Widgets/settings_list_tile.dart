import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile(
      {super.key,
      required this.callBackFunction,
      required this.title,
      this.subtitle,
      this.trailing});
  final void Function(BuildContext) callBackFunction;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle ?? ""),
      ),
      onTap: () => callBackFunction(context),
    );
  }
}
