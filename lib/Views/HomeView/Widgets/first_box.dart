import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/home_view_body.dart';

class FirstWindow extends StatelessWidget {
  const FirstWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("This week", style: TextStyle(fontSize: 15)),
                ViewToDoListButton(),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "No work comping up immediately",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
