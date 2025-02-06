import 'package:flutter/material.dart';
import 'package:gc_clone/constants.dart';

BoxDecoration kBorderStyle = BoxDecoration(
  borderRadius: BorderRadius.circular(
    kBorderCurver as double,
  ),
  border: Border.all(
    color: kTextColor ?? Colors.grey,
  ),
);
