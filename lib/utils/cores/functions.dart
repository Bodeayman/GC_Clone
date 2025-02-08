import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gc_clone/constants.dart';
import 'package:go_router/go_router.dart';
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

Future<void> openGoogleHelp(BuildContext context) async {
  Uri url = Uri.parse(
      'https://support.google.com/edu/classroom/?hl=en#topic=10298088');
  try {
    await launchUrl(url);
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Can't launch the app"),
      ),
    );
  }
}

void openSettings(BuildContext context) {
  Navigator.of(context).pop();
  context.push('/settings');
}

Future<void> openClassroomDrive(BuildContext context) async {
  Uri url = Uri.parse(
      "https://drive.google.com/drive/folders/1pe6JvHtWHpUBkZ7lsZObFbg_jvieYHv8AXo7KziBDFwb4dz_FCulO7NiP4mkbzhyy8nbv1NS");
  try {
    await launchUrl(url);
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Can't launch the drive"),
      ),
    );
  }
}

void openOfflinePage(BuildContext context) {
  Navigator.of(context).pop();
  context.push("/offline_files");
}
