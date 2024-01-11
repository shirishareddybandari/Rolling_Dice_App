import 'package:flutter/material.dart';
import 'package:first_app/Gradient_Container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(80, 150, 200, 240),
        body: GradientContainer.red(),
      ),
    ),
  );
}
