import 'package:flutter/material.dart';
import 'package:gc_clone/utils/cores/more_vert_feature.dart/more_vert_feature.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar mainAppBar = AppBar(
  title: Row(
    children: [
      SizedBox(
        width: 50,
        child: Image.asset("assets/google.png"),
      ),
      const SizedBox(
        width: 3,
      ),
      Text(
        style: GoogleFonts.poppins(),
        "Classroom",
      ),
    ],
  ),
  actions: actions,
);
