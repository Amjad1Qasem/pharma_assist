import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    return DefaultScaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        const BackgroundScreen(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  AppImages.shapOnTopEnd,
                  color: Theme.of(context).primaryColor,
                  width: 245.w,
                  height: 150.h,
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 60.r, end: 60.r),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.successIcon,
                    width: 200.w,
                    height: 200.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 0.r, top: 30.r, bottom: 5.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(translation(context).resetSuccessful,
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(translation(context).youCanLogin,
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            DefaultbButton(
              textButton: translation(context).loginNow,
              onTap: () {
                context.goNamed(AppRouter.homeLayout);
                debugPrint('Login ok');
              },
              color: colors.buttonColor,
              colorText: Colors.white,
              radius: 40.r,
              width: 180.w,
              height: 60.h,
              fontsize: 26.sp,
              fontweight: FontWeight.w500,
            ),
            Spacer(),
            SizedBox(
              height: 100.h,
              child: Image.asset(
                AppImages.shapOnButtom,
                color: Theme.of(context).primaryColor,
                width: double.infinity.w,
                height: 150.h,
              ),
            )
          ],
        ),
      ],
    ));
  }
}
