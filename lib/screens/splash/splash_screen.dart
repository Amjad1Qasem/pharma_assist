// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/helpers/local_storage/local_storage_helper.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/splash/widgets/animated_background.dart';
import 'package:pharma_assist/themes/extentions/splash_screen_header_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    void checkRegistration() async {
      final token = await LocalStorageHelper.getToken();
      if (token == null) {
        context.goNamed(AppRouter.onBoardingScreen);
      } else {
        context.goNamed(AppRouter.homeLayout);
      }
    }

    final splashScreenHeaderThemeExtention =
        Theme.of(context).extension<SplashScreenHeaderThemeExtention>()!;
    useEffect(() {
      checkRegistration();
      return null;
    }, []);

    return DefaultScaffold(
      body: Stack(
        children: [
          const AnimatedBackgound(),
          Center(
            child: Image(
              image: AssetImage(
                splashScreenHeaderThemeExtention.imagePath,
              ),
              width: 325.w,
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}
