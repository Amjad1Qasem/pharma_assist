import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/splash/widgets/animated_background.dart';
import 'package:pharma_assist/themes/extentions/splash_screen_header_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final splashScreenHeaderThemeExtention =
        Theme.of(context).extension<SplashScreenHeaderThemeExtention>()!;
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 4), (t) {
        context.goNamed(AppRouter.onBoardingScreen);
      });
      return timer.cancel;
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
