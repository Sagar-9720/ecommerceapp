import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //AppBasicColors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFE5BE4D);
  static const Color accent = Color(0xFF5385EC);

  //GradientColors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  //TextColors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C6C6C);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background Container Colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF000000);
}
