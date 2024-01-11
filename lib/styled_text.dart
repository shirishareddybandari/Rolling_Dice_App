import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(88, 18, 18, 0.722),
          fontSize: 18),
    );
  }
}
