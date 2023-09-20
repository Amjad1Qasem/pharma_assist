import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharma_assist/themes/app_colors.dart';
import 'package:pharma_assist/themes/extentions/bg_screen_onboarding_extention.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/themes/extentions/splash_screen_header_theme_extention.dart';

abstract class AppThemes {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            onPrimary: AppColors.black,
            primary: AppColors.primaryGreen,
            secondary: Colors.white,
            onSecondary: AppColors.colorTextField.withOpacity(0.2),
            tertiary: AppColors.grey,
            onSecondaryContainer: AppColors.colorTextField.withOpacity(0.12),
            onTertiary: AppColors.white,
            outline: AppColors.grey),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            bodyMedium: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
            bodySmall: GoogleFonts.nunito(
              textStyle: TextStyle(
                  color: AppColors.grey,
                  fontFamily: 'Nunito',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            bodyLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.primaryGreen,
                    fontFamily: 'Nunito-Bold',
                    fontSize: 42.sp,
                    fontWeight: FontWeight.w500)),
            labelSmall: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.grey,
                    fontFamily: 'Nunito',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600)),
            labelMedium: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.primaryGreen,
                    fontFamily: 'Nunito',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600)),
            labelLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.grey,
                    fontFamily: 'Nunito',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold)),
            titleLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.grey,
                    fontFamily: 'Nunito_bold',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700)),
            titleSmall: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            titleMedium: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
            displaySmall: GoogleFonts.nunito(
                textStyle: TextStyle(
              color: AppColors.grey,
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
            )),
            displayLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
              color: AppColors.primaryGreen,
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
            )),
            displayMedium: GoogleFonts.nunito(
                textStyle: TextStyle(
              color: AppColors.grey,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ))),
        extensions: const {
          SplashScreenHeaderThemeExtention.light,
          ColorsThemeExtention.light,
          BgOnboardingSreenThemeExtention.light,
        },
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black,
            onPrimary: AppColors.black,
            primary: AppColors.primaryDarkGreen,
            secondary: Colors.white,
            tertiary: AppColors.white,
            onSecondary: AppColors.lightGrey.withOpacity(0.7),
            onSecondaryContainer: AppColors.colorTextField,
            onTertiary: AppColors.colorButtonBack,
            outline: AppColors.white),
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
            bodyMedium: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.lightGrey,
              ),
            ),
            bodySmall: GoogleFonts.nunito(
              textStyle: TextStyle(
                  color: AppColors.lightGrey,
                  fontFamily: 'Nunito',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            bodyLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Nunito-Bold',
                    fontSize: 42.sp,
                    fontWeight: FontWeight.w500)),
            labelSmall: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.lightGrey,
                    fontFamily: 'Nunito',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600)),
            labelMedium: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.primaryGreen,
                    fontFamily: 'Nunito',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600)),
            labelLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.lightGrey,
                    fontFamily: 'Nunito',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold)),
            titleLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
                    color: AppColors.lightGrey,
                    fontFamily: 'Nunito_bold',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700)),
            titleSmall: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
            titleMedium: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            displaySmall: GoogleFonts.nunito(
                textStyle: TextStyle(
              color: AppColors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
            )),
            displayLarge: GoogleFonts.nunito(
                textStyle: TextStyle(
              color: AppColors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
            )),
            displayMedium: GoogleFonts.nunito(
                textStyle: TextStyle(
              color: AppColors.grey,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ))),
        extensions: const {
          SplashScreenHeaderThemeExtention.dark,
          ColorsThemeExtention.dark,
          BgOnboardingSreenThemeExtention.dark,
        },
      );
}
