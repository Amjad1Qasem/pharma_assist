import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/utilities/translation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsetsDirectional.only(
          top: 50.sp,
          start: 30,
          end: 30.sp,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
                Image(
                  image: const AssetImage(
                    'assets/images/IconSplash.png',
                  ),
                  width: 325.w,
                  height: 150.h,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              translation(context).splashDescription,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333)),
            ),
            SizedBox(
              height: 150.h,
            ),
            DefaultbButton(
              textButton: translation(context).splashTextButton,
              fun: () {
                context.goNamed(AppRouter.onBoardingScreen);
              },
              width: 221.w,
              height: 59.h,
              radius: 40.r,
              colorText: Colors.white,
              color: const Color(0xff00a8b9),
              fontsize: 24,
              fontweight: FontWeight.w700,
            ),
          ],
        ),
      )),
    );
  }
}
