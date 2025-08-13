import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:lewrupay/views/Home.dart';

void main() {
  runApp(
    GradientButtonThemeData(
      data: GradientElevatedButton.styleFrom(
        gradient: const LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        foregroundColor: Colors.black,
      ),
      child: MaterialApp(home: LewruPayApp()),
    ),
  );
}
