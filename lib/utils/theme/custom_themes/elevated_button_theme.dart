import 'package:flutter/material.dart';

///-Light & Dark Elevated Button Theme Data

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  ///Light Theme
  static final lightElevatedButtonThemeData = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
  ));
}
