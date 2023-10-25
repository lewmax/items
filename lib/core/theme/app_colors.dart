import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: 'Geomanist',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColors.black),
  ),
);

abstract class AppColors {
  static const red = Color(0xFFE44848);
  static const redBg = Color(0xFF382323);
  static const purple = Color(0xFFB09FFF);
  static const green = Color(0xFF40ae59);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const textBlack = Color(0xFF59585a);
  static const gbGrey = Color(0xFFf2f2f2);
  static const grey = Color(0xFF969696);
  static const darkGrey2 = Color(0xFF303237);
  static const darkGrey1 = Color(0xff282526);
  static const lightGrey = Color(0xFF696A6C);
}
