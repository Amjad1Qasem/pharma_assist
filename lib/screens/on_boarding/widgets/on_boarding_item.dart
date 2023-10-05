import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class OnBoardingModel {
  final String persononboarding;
  final String backgroundonboarding;
  final String title;
  final String descriptions;

  OnBoardingModel({
    required this.persononboarding,
    required this.backgroundonboarding,
    required this.title,
    required this.descriptions,
  });
}

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsetsDirectional.only(
            top: 40.sp, start: 20.sp, end: 20.sp, bottom: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        context.goNamed(AppRouter.loginScreen);
                      },
                      child: Text(
                        translation(context).skip,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ))
                ],
              ),
            ),
             SizedBox(
              height: 20.h,
            ),
            Text(model.title, style: Theme.of(context).textTheme.labelLarge),
            Text(model.descriptions,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
      const Spacer(),
      Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                model.backgroundonboarding,
                color: Theme.of(context).primaryColor,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60.r),
                child: Image.asset(
                  model.persononboarding,
                  width: 340.w,
                  height: 500.h,
                ),
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
