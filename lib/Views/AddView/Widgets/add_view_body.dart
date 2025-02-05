import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/Widgets/course_list_tile.dart';

class AddViewBody extends StatelessWidget {
  const AddViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        YourCurrentlySigned(),
        Divider(),
        ClassCodeForm(),
      ],
    );
  }
}

class YourCurrentlySigned extends StatelessWidget {
  const YourCurrentlySigned({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You are currently signed in as',
          ),
        ),
        const CourseListTile(
          color: Colors.green,
          letter: "A",
          listTileName: "Abdullah Ayman",
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            child: const Text("Switch account"),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class ClassCodeForm extends StatelessWidget {
  const ClassCodeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Ask you teacher for the class code , then enter it here",
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        SizedBox(height: 15),
        EnterClassForm(),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "To sign in with a class code",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Usee an authorzied account",
            ),
            Text(
              "Use a class code with 6-8 letters or numbers , and no spaces or symboles",
            ),
          ],
        )
      ],
    );
  }
}

class EnterClassForm extends StatelessWidget {
  const EnterClassForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(color: Colors.blue),
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        filled: false,
        labelText: 'Class Code',
        labelStyle: const TextStyle(
          color: Colors.blue,
        ),
        border: OutlineInputBorder(
          // Blue border for the input field
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          // Border when the field is enabled
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          // Border when the field is focused
          borderSide: const BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        hintStyle: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
