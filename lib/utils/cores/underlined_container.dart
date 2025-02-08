import 'package:flutter/material.dart';

class UnderlinedContainer extends StatelessWidget {
  const UnderlinedContainer({super.key, required this.word});
  final String word;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.red[400]!, // Color of the underline
            width: 2.0, // Thickness of the underline
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          word,
          style: TextStyle(color: Colors.red[400]!, fontSize: 20),
        ),
      ),
    );
  }
}
