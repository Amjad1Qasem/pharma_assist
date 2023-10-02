import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/bg_screen_onboarding_extention.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../components/default_scaffold.dart';
import 'widgets/on_boarding_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
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
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const BackgroundScreen(),
        PageView.builder(
          controller: onBoardController,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              OnBoardingItem(model: boarding[index]),
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
              SmoothPageIndicator(
                  controller: onBoardController, // PageController
                  count: boarding.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: const Color.fromARGB(255, 255, 255, 255),
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
