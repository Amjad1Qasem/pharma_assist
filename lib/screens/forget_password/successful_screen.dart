import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
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
            Padding(
              padding: EdgeInsetsDirectional.only(start: 60.r, end: 40.r),
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
                  Text(translation(context).reset_successful,
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(translation(context).you_can_login,
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            const Spacer(),
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
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: 500.r, bottom: 10.r, start: 40.r, end: 40.r),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultbButton(
                        textButton: translation(context).login_now,
                        onTap: () {
                          context.pushNamed(AppRouter.homeScreen);
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
