import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/botton_back.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/app_colors.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class VerificationScreen extends HookWidget {
  const VerificationScreen({
    super.key,
    required this.emailcontroller,
  });
  final TextEditingController emailcontroller;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    final verificationCode1 = useTextEditingController();
    final verificationCode2 = useTextEditingController();
    final verificationCode3 = useTextEditingController();
    final verificationCode4 = useTextEditingController();

    return DefaultScaffold(
        body: Stack(
      children: [
        const Background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 30.sp, top: 30.sp, end: 30.sp),
                    child: BottonBack(
                      onTap: () => context.goNamed(AppRouter.confirmEmail,
                          argument: false),
                    ),
                  ),
                  Image.asset(
                    AppImages.shapOnTopEnd,
                    color: Theme.of(context).primaryColor,
                    width: MediaQuery.of(context).size.width / 1.7,
                    height: MediaQuery.of(context).size.height * 0.17,
                  ),
                ]),
            Padding(
              padding: EdgeInsetsDirectional.all(30.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    translation(context).verificationCode,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.aqua),
                  ),
                  Text(
                      '${translation(context).sentCode}\n${emailcontroller.text}'),
                  TextButton(
                      onPressed: () => context.goNamed(AppRouter.confirmEmail,
                          argument: true),
                      child: Text(
                        translation(context).changeEmail,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.aqua),
                      )),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68.h,
                        width: 64.h,
                        child: DefaultTextFormField(
                            textAlignCenter: true,
                            num: 1,
                            controller: verificationCode1,
                            radius: 3,
                            keyboardType: TextInputType.number,
                            validation: const [],
                            onChanged: (number) {
                              if (number.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            fillColor: Colors.transparent.withOpacity(0.1)),
                      ),
                      SizedBox(
                        height: 68.h,
                        width: 64.h,
                        child: DefaultTextFormField(
                            textAlignCenter: true,
                            num: 1,
                            controller: verificationCode2,
                            radius: 3,
                            keyboardType: TextInputType.number,
                            validation: const [],
                            onChanged: (number) {
                              if (number.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            fillColor: Colors.transparent.withOpacity(0.1)),
                      ),
                      SizedBox(
                        height: 68.h,
                        width: 64.h,
                        child: DefaultTextFormField(
                            textAlignCenter: true,
                            num: 1,
                            controller: verificationCode3,
                            radius: 3,
                            keyboardType: TextInputType.number,
                            validation: const [],
                            onChanged: (number) {
                              if (number.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            fillColor: Colors.transparent.withOpacity(0.1)),
                      ),
                      SizedBox(
                        height: 68.h,
                        width: 64.h,
                        child: DefaultTextFormField(
                            textAlignCenter: true,
                            num: 1,
                            controller: verificationCode4,
                            radius: 3,
                            keyboardType: TextInputType.number,
                            validation: const [],
                            onChanged: (number) {
                              if (number.length == 1) {
                                FocusScope.of(context).unfocus();
                              }
                            },
                            fillColor: Colors.transparent.withOpacity(0.1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            DefaultbButton(
              textButton: translation(context).confirm,
              onTap: () {
                context.goNamed(AppRouter.confirmPassword);
                debugPrint('Login ok');
              },
              color: colors.buttonColor,
              colorText: Colors.white,
              radius: 40.r,
              width: 180.w,
              height: 60.h,
              fontsize: 28.sp,
              fontweight: FontWeight.w500,
            ),
            const Spacer(),
            Image.asset(
              AppImages.shapOnButtom,
              color: Theme.of(context).primaryColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8.5,
            )
          ],
        ),
      ],
    ));
  }
}
