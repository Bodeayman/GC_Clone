import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gc_clone/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Future<dynamic> openMenu(BuildContext context) async {
  await showMenu(
    context: context,
    position: RelativeRect.fromLTRB(mobileWidth, mobileHeight / 19, 0, 0),
    items: [
      const PopupMenuItem(
        child: Center(
          child: Text(
            "Send Google Feedback",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
    color: kPrimaryColor,
  );
}

Future<void> openGoogleCalendar(BuildContext context) async {
  Uri url;

  if (Platform.isAndroid) {
    url = Uri.parse(
        "intent://com.google.android.calendar/#Intent;package=com.google.android.calendar;end");
  } else {
    url = Uri.parse('https://calendar.google.com');
  }
  if (Platform.isAndroid) {
    try {
      await launchUrl(url);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Can't launch the app"),
        ),
      );
      url = Uri.parse('https://calendar.google.com');
      await launchUrl(url);
    }
  } else {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
