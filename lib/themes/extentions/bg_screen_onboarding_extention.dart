import 'package:flutter/material.dart';
import 'package:pharma_assist/constants/app_images.dart';

@immutable
class BgOnboardingSreenThemeExtention
    extends ThemeExtension<BgOnboardingSreenThemeExtention> {
  final String imagePath;

  const BgOnboardingSreenThemeExtention(this.imagePath);

  @override
  ThemeExtension<BgOnboardingSreenThemeExtention> copyWith(
      {String? imagePath}) {
    return BgOnboardingSreenThemeExtention(
      imagePath ?? this.imagePath,
    );
  }

  @override
  ThemeExtension<BgOnboardingSreenThemeExtention> lerp(
      ThemeExtension<BgOnboardingSreenThemeExtention>? other, double t) {
    if (other is! BgOnboardingSreenThemeExtention) {
      return this;
    }
    return BgOnboardingSreenThemeExtention(
      other.imagePath,
    );
  }

  static const light =
      BgOnboardingSreenThemeExtention(AppImages.backgroundOnBoarding1);

  static const dark =
      BgOnboardingSreenThemeExtention(AppImages.backgroundOnBoarding1);
}
