import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharma_assist/themes/app_colors.dart';
import 'package:pharma_assist/themes/extentions/splash_screen_header_theme_extention.dart';

abstract class AppThemes {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            primary: AppColors.primaryGreen,
            secondary: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.nunito(
            textStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
        ),
        extensions: const {
          SplashScreenHeaderThemeExtention.light,
        },
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black,
            primary: AppColors.primaryGreen,
            secondary: Colors.white),
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.nunito(
            textStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.lightGrey,
            ),
          ),
        ),
        extensions: const {
          SplashScreenHeaderThemeExtention.dark,
        },
      );
}
