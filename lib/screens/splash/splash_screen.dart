import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/themes/extentions/splash_screen_header_theme_extention.dart';
import 'package:pharma_assist/utilities/translation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final splashScreenHeaderThemeExtention =
        Theme.of(context).extension<SplashScreenHeaderThemeExtention>()!;
    final color = Theme.of(context).extension<ColorsThemeExtention>()!;
    return DefaultScaffold(
      body: Stack(
        children: [
          //const AnimatedBackgound(),
          Center(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: 50.sp,
                start: 30.sp,
                end: 30.sp,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage(
                          splashScreenHeaderThemeExtention.imagePath,
                        ),
                        width: 325.w,
                        height: 150.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(translation(context).splashDescription,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 150.h,
                  ),
                  DefaultbButton(
                    textButton: translation(context).splashTextButton,
                    onTap: () {
                      context.goNamed(AppRouter.onBoardingScreen);
                    },
                    width: 221.w,
                    height: 59.h,
                    radius: 40.r,
                    colorText: Theme.of(context).colorScheme.secondary,
                    color: color.buttonColor,
                    fontsize: 24.sp,
                    fontweight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
