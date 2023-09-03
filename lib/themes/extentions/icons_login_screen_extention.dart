import 'package:flutter/material.dart';
import 'package:pharma_assist/constants/app_images.dart';

@immutable
class IconsLoginScreenThemeExtention
    extends ThemeExtension<IconsLoginScreenThemeExtention> {
  final String imagePath;

  const IconsLoginScreenThemeExtention(this.imagePath);

  @override
  ThemeExtension<IconsLoginScreenThemeExtention> copyWith({String? imagePath}) {
    return IconsLoginScreenThemeExtention(
      imagePath ?? this.imagePath,
    );
  }

  @override
  ThemeExtension<IconsLoginScreenThemeExtention> lerp(
      ThemeExtension<IconsLoginScreenThemeExtention>? other, double t) {
    if (other is! IconsLoginScreenThemeExtention) {
      return this;
    }
    return IconsLoginScreenThemeExtention(
      other.imagePath,
    );
  }

  static const light = IconsLoginScreenThemeExtention(AppImages.iconLogin);

  // static const dark = IconsLoginScreenThemeExtention(AppImages.iconLogin);
}
