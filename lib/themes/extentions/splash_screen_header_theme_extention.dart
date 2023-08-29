import 'package:flutter/material.dart';
import 'package:pharma_assist/constants/app_images.dart';

@immutable
class SplashScreenHeaderThemeExtention
    extends ThemeExtension<SplashScreenHeaderThemeExtention> {
  final String imagePath;

  const SplashScreenHeaderThemeExtention(this.imagePath);

  @override
  ThemeExtension<SplashScreenHeaderThemeExtention> copyWith(
      {String? imagePath}) {
    return SplashScreenHeaderThemeExtention(
      imagePath ?? this.imagePath,
    );
  }

  @override
  ThemeExtension<SplashScreenHeaderThemeExtention> lerp(
      ThemeExtension<SplashScreenHeaderThemeExtention>? other, double t) {
    if (other is! SplashScreenHeaderThemeExtention) {
      return this;
    }
    return SplashScreenHeaderThemeExtention(
      other.imagePath,
    );
  }

  static const light = SplashScreenHeaderThemeExtention(AppImages.iconSplash);

  static const dark =
      SplashScreenHeaderThemeExtention(AppImages.iconSplashDark);
}
