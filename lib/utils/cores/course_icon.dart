import 'package:flutter/material.dart';

class CourseIcon extends StatelessWidget {
  const CourseIcon({super.key, required this.letter, required this.color});
  final String letter;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
