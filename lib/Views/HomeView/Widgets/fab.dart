import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFabButton extends StatelessWidget {
  const CustomFabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showModalBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheet(
            onClosing: () {},
            builder: (context) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  context.push('/joinCourse');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      heightFactor: 1,
                      child: Text(
                        "Join Class",
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      shape: const CircleBorder(),
      child: Icon(Icons.add, color: Colors.blue[400]),
    );
  }
}
