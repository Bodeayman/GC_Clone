import 'package:flutter/material.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PHYS 104 - LAB 2",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "PHYS 104 - LCTR-01",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
