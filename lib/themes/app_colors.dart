import 'package:flutter/material.dart';

abstract class AppColors {
  static const transparent = Colors.transparent;

  static const purple = Color(0xFFB7A5FF);

  static const lightBlue = Color(0xFF53C4E8);

  static const aqua = Color(0xFF33B9C7);

  static const darkPurple = Color(0xFF585CE5);

  static const lightGrey = Color(0xFFFEFEFE);

  static const grey = Color(0xFF333333);

  static const primaryGreen = Color(0xFF00A8B9);

  static const primaryDarkGreen = Color(0xFF1F4D59);

  static const floatingDarkColor = Color(0xff3D3D3D);

  static const white = Color(0xffffffff);

  static const colorTextField = Color(0xFF767680);

  static const colorButtonBack = Color(0xff568093);

  static const black = Color(0xFF000000);

  static const colorTextFieldSearch = Color(0xFFdedee1);

  static const containerColor = Color(0xFFe5fdff);

  static const favorateColor = Color(0xFFFF0000);

  static const backgroundFilter = Color(0xFFe0eeef);

  static final backgroundGradientColors = [
    const Color(0xff3f51b5).withOpacity(0.6),
    const Color(0xffB7A5FF).withOpacity(0.6),
    const Color(0xff33B9C7).withOpacity(0.6),
  ];
  static final backgroundGradientDarkColors = [
    const Color.fromARGB(0, 217, 217, 217),
    const Color.fromARGB(179, 217, 217, 217),
    const Color(0xffD9D9D9),
  ];
  static final backgroundGradientLightColors = [
    AppColors.primaryGreen.withOpacity(0.6),
    const Color(0xff00A8B9).withOpacity(0.1),
  ];
}
