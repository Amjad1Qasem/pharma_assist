import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/translation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.pushNamed(AppRouter.onBoardingScreen);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image(image: AssetImage('assets/images/IconSplash.png')),
          SizedBox(height: 10.h),
          Text(translation(context).splashDescription),
        ],
      )),
    );
  }
}
