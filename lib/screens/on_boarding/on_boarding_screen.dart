import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/app_colors.dart';
import 'package:pharma_assist/themes/extentions/bg_screen_onboarding_extention.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../components/default_scaffold.dart';
import 'widgets/on_boarding_item.dart';

class OnBoardingScreen extends HookWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    final onBoardController = usePageController();
    final bgScreencolor =
        Theme.of(context).extension<BgOnboardingSreenThemeExtention>()!;
    List<OnBoardingModel> boarding = [
      OnBoardingModel(
        backgroundonboarding: bgScreencolor.imagePath,
        persononboarding: AppImages.personOnBoarding1,
        descriptions: translation(context).onBoardingFirstDescription,
        title: translation(context).onBoardingFirstTitle,
      ),
      OnBoardingModel(
        backgroundonboarding: bgScreencolor.imagePath,
        persononboarding: AppImages.personOnBoarding2,
        descriptions: translation(context).onBoardingSecondDescription,
        title: translation(context).onBoardingSecondTitle,
      ),
      OnBoardingModel(
        backgroundonboarding: bgScreencolor.imagePath,
        persononboarding: AppImages.personOnBoarding3,
        descriptions: translation(context).onBoardingLastDescription,
        title: translation(context).onBoardingLastTitle,
      ),
    ];
    bool isLast = false;
    return DefaultScaffold(
        body:
        Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const Background(),
        PageView.builder(
          controller: onBoardController,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              OnBoardingItem(model: boarding[index]),
          itemCount: boarding.length,
          onPageChanged: (int index) {
            if (index == boarding.length - 1) {
              debugPrint('Last screen');
              isLast = true;
            } else {
              debugPrint('not Last screen');
              isLast = false;
            }
          },
        ),
        Padding(
          padding: EdgeInsets.all(30.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmoothPageIndicator(
                controller: onBoardController,
                count: boarding.length,
                effect: ExpandingDotsEffect(
                    activeDotColor: AppColors.white,
                    dotColor: Colors.grey,
                    dotHeight: 8.0.h,
                    dotWidth: 10.0.w,
                    spacing: 5.0.w,
                    radius: 5.0.r,
                    expansionFactor: 4.0),
              ),
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
                backgroundColor: colors.floatingBgColor,
                child: Icon(
                  Icons.arrow_forward,
                  color: colors.floatingIconColor,
                  size: 40.sp,
                ),
              )
            ],
          ),
        ),
     
      ],
    ));
  }
}
