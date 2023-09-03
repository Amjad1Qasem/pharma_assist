// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/bg_screen_onboarding_extention.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/translation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/default_scaffold.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var onBoardController = PageController();
  var isLast = false;
  late final bgScreencolor =
      Theme.of(context).extension<BgOnboardingSreenThemeExtention>()!;
  late List<OnBoardingModel> boarding = [
    OnBoardingModel(
      backgroundonboarding: bgScreencolor.imagePath,
      persononboarding: 'assets/images/personOnBoarding1.png',
      descriptions: translation(context).onBoardingFirstDescription,
      title: translation(context).onBoardingFirstTitle,
    ),
    OnBoardingModel(
      backgroundonboarding: bgScreencolor.imagePath,
      persononboarding: 'assets/images/personOnBoarding2.png',
      descriptions: translation(context).onBoardingSecondDescription,
      title: translation(context).onBoardingSecondTitle,
    ),
    OnBoardingModel(
      backgroundonboarding: bgScreencolor.imagePath,
      persononboarding: 'assets/images/personOnBoarding3.png',
      descriptions: translation(context).onBoardingLastDescription,
      title: translation(context).onBoardingLastTitle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;

    return DefaultScaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          actions: [
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
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: onBoardController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  buildOnBoardingItem(boarding[index], context),
              itemCount: boarding.length,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  debugPrint('Last screen');
                  setState(() {
                    isLast = true;
                  });
                } else {
                  debugPrint('not Last screen');
                  setState(() {
                    isLast = false;
                  });
                }
              },
            ),
            Padding(
              padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Indicator
                  SmoothPageIndicator(
                      controller: onBoardController, // PageController
                      count: boarding.length,
                      effect: ExpandingDotsEffect(
                          activeDotColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          dotColor: Colors.grey,
                          dotHeight: 8.0.h,
                          dotWidth: 10.0.w,
                          spacing: 5.0.w,
                          radius: 5.0.r,
                          expansionFactor: 4.0), // your preferred effect
                      onDotClicked: (index) {}),
                  FloatingActionButton(
                    onPressed: () {
                      if (isLast) {
                        context.goNamed(AppRouter.loginScreen);
                      } else {
                        onBoardController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn);
                      }
                    },
                    // ignore: sort_child_properties_last
                    child: Icon(
                      Icons.arrow_forward,
                      color: colors.floatingIconColor,
                      size: 40.sp,
                    ),
                    backgroundColor: colors.floatingBgColor,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

Widget buildOnBoardingItem(OnBoardingModel Model, BuildContext context) =>
    Column(children: [
      Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(20.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                // ignore: unnecessary_string_interpolations
                '${Model.title}',
                style: Theme.of(context).textTheme.labelLarge),
            Text(
                // ignore: unnecessary_string_interpolationsp, unnecessary_string_interpolations
                '${Model.descriptions}',
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
              // ignore: unnecessary_string_interpolations
              Image.asset(
                // ignore: unnecessary_string_interpolations
                '${Model.backgroundonboarding}',
                color: Theme.of(context).primaryColor,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60.r),
                child: Image.asset(
                  // ignore: unnecessary_string_interpolations
                  '${Model.persononboarding}',
                  width: 340.w,
                  height: 500.h,
                ),
              ),
            ],
          ),
        ],
      ),
    ]);
