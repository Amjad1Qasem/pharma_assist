// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/botton_back.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

import '../../../router/app_router.dart';

class ConfirmEmailSrceen extends HookWidget {
  const ConfirmEmailSrceen({
    super.key,
    required this.hasBackButton,
  });
  final bool hasBackButton;
  @override
  Widget build(BuildContext context) {
    final emailcontroller = useTextEditingController();
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    return DefaultScaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Background(),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  hasBackButton
                      ? const SizedBox()
                      : Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: 30.sp, top: 30.sp, end: 30.sp),
                          child: BottonBack(
                            onTap: () => context.goNamed(AppRouter.loginScreen),
                          ),
                        ),
                  Image.asset(
                    AppImages.shapOnTopEnd,
                    color: Theme.of(context).primaryColor,
                    width: MediaQuery.of(context).size.width / 1.7,
                    height: MediaQuery.of(context).size.height * 0.17,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.r, end: 40.r),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.confirmEmail,
                      width: 200.w,
                      height: 200.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 40.r, top: 30.r, bottom: 5.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(translation(context).forgetPassword,
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.r, bottom: 0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(translation(context).itHappens,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
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
          Center(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 40.sp, end: 40.sp, top: 310),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(translation(context).email,
                              style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      DefaultTextFormField(
                        fillColor: Theme.of(context)
                            .colorScheme
                            .onSecondary
                            .withOpacity(0.3),
                        validation: const [],
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        radius: 20.sp,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultbButton(
                            textButton: translation(context).conti,
                            onTap: () {
                              context.goNamed(AppRouter.verificationScreen,
                                  argument: emailcontroller);
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
