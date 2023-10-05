import 'package:flutter/material.dart';
import 'package:pharma_assist/constants/app_images.dart';

@immutable
class ColorsThemeExtention extends ThemeExtension<ColorsThemeExtention> {
  final Color floatingBgColor;
  final Color floatingIconColor;
  final Color iconAppColor;
  final Color buttonColor;
  final List<Color> bottomNavColors;
  final String imagePathShadowBottomNav;

  const ColorsThemeExtention({
    required this.floatingBgColor,
    required this.floatingIconColor,
    required this.iconAppColor,
    required this.buttonColor,
    required this.bottomNavColors,
    required this.imagePathShadowBottomNav,
  });

  @override
  ThemeExtension<ColorsThemeExtention> copyWith(
      {Color? floatingBgColor, Color? floatingIconColor}) {
    return ColorsThemeExtention(
      floatingBgColor: floatingBgColor ?? this.floatingBgColor,
      floatingIconColor: floatingIconColor ?? this.floatingIconColor,
      iconAppColor: iconAppColor,
      buttonColor: buttonColor,
      bottomNavColors: bottomNavColors,
      imagePathShadowBottomNav: imagePathShadowBottomNav,
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
      iconAppColor: other.iconAppColor,
      buttonColor: other.buttonColor,
      bottomNavColors: other.bottomNavColors,
      imagePathShadowBottomNav: other.imagePathShadowBottomNav,
    );
  }

  static const light = ColorsThemeExtention(
    floatingBgColor: Colors.white,
    floatingIconColor: Colors.black,
    iconAppColor: Color(0xff00A8B9),
    buttonColor: Color(0xff00A8B9),
    bottomNavColors: [
      Colors.white,
      Colors.white,
    ],
    imagePathShadowBottomNav: AppImages.bottomShadowLightIcon,
  );

  static const dark = ColorsThemeExtention(
    floatingBgColor: Color(0xff5d6592),
    floatingIconColor: Colors.white,
    iconAppColor: Colors.white,
    buttonColor: Color(0xff00A8B9),
    bottomNavColors: [
      Color(0xB54C678B),
      Color(0xff1c4c59),
    ],
    imagePathShadowBottomNav: AppImages.bottomShadowDarkIcon,
  );
}
