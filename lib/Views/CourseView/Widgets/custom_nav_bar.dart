import 'package:flutter/material.dart';

class CourseBottomNavBar extends StatefulWidget {
  const CourseBottomNavBar({super.key});

  @override
  State<CourseBottomNavBar> createState() => _CourseBottomNavBarState();
}

class _CourseBottomNavBarState extends State<CourseBottomNavBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      selectedItemColor: Colors.red[400],
      unselectedItemColor: Colors.grey[600],
      onTap: (index) {
        setState(() {
          _index = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Stream"),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: "Classwork",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "People",
        )
      ],
      elevation: 20,
    );
  }
}
