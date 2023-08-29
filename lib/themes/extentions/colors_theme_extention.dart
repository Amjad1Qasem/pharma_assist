import 'package:flutter/material.dart';
import 'package:pharma_assist/themes/app_colors.dart';

@immutable
class ColorsThemeExtention extends ThemeExtension<ColorsThemeExtention> {
  final Color floatingBgColor;
  final Color floatingIconColor;

  const ColorsThemeExtention(
      {required this.floatingBgColor, required this.floatingIconColor});

  @override
  ThemeExtension<ColorsThemeExtention> copyWith(
      {Color? floatingBgColor, Color? floatingIconColor}) {
    return ColorsThemeExtention(
      floatingBgColor: floatingBgColor ?? this.floatingBgColor,
      floatingIconColor: floatingIconColor ?? this.floatingIconColor,
    );
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
    );
  }

  static const light = ColorsThemeExtention(
      floatingBgColor: Colors.white, floatingIconColor: Colors.black);

  static const dark = ColorsThemeExtention(
      floatingBgColor: AppColors.floatingDarkColor,
      floatingIconColor: Colors.white);
}
