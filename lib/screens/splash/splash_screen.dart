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
          padding: EdgeInsets.all(ScreenUtil().setSp(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(
                  'assets/images/IconSplash.png',
                ),
              width: 325.w,
              height: 130.h,
            ),
              SizedBox(
                height: 10.h),
              Text(
                 translation(context).splashDescription,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333)),
            ),
              SizedBox(
              height: 200.h,),
              DefaultbButton(
                textButton: translation(context).splashTextButton,
                fun: () {
                   context.goNamed(AppRouter.onBoardingScreen);
                 },
                width: 221.w,
                height: 59.h,
                radius: 42.r,
                colorText: Colors.white,
                color: const Color(0xff00a8b9),
            ),
          ],
        ),
      )),
    );
  }
}
