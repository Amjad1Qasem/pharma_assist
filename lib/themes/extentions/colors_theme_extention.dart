import 'package:flutter/material.dart';
import 'package:pharma_assist/themes/app_colors.dart';

@immutable
class ColorsThemeExtention extends ThemeExtension<ColorsThemeExtention> {
  final Color floatingBgColor;
  final Color floatingIconColor;
  final Color iconAppColor;
  final Color buttonColor;

  const ColorsThemeExtention(
      {required this.floatingBgColor,
      required this.floatingIconColor,
      required this.iconAppColor,
      required this.buttonColor});

  @override
  ThemeExtension<ColorsThemeExtention> copyWith(
      {Color? floatingBgColor, Color? floatingIconColor}) {
    return ColorsThemeExtention(
        floatingBgColor: floatingBgColor ?? this.floatingBgColor,
        floatingIconColor: floatingIconColor ?? this.floatingIconColor,
        iconAppColor: iconAppColor,
        buttonColor: buttonColor);
  }

  @override
  ThemeExtension<ColorsThemeExtention> lerp(
      ThemeExtension<ColorsThemeExtention>? other, double t) {
    if (other is! ColorsThemeExtention) {
      return this;
    }
    return ColorsThemeExtention(
      floatingBgColor: other.floatingBgColor,
      floatingIconColor: other.floatingIconColor,
      iconAppColor: other.iconAppColor,
      buttonColor: other.buttonColor,
    );
  }

  static const light = ColorsThemeExtention(
    floatingBgColor: Colors.white,
    floatingIconColor: Colors.black,
    iconAppColor: Color(0xff00A8B9),
    buttonColor: Color(0xff00A8B9),
  );

  static const dark = ColorsThemeExtention(
    floatingBgColor: AppColors.floatingDarkColor,
    floatingIconColor: Colors.white,
    iconAppColor: Colors.white,
    buttonColor: Color(0xff00A8B9),
  );
}
