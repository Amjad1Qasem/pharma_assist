// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

import '../../router/app_router.dart';

class ConfirmEmailSrceen extends StatefulWidget {
  const ConfirmEmailSrceen({super.key});

  @override
  State<ConfirmEmailSrceen> createState() => _ConfirmEmailSrceenState();
}

class _ConfirmEmailSrceenState extends State<ConfirmEmailSrceen> {

  var emailcontroller = TextEditingController();
  late final colors = Theme.of(context).extension<ColorsThemeExtention>()!;

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: 48.r, start: 0.r, end: 82.r),
                    child: Row(
                      children: [
                        Container(
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: Theme.of(context).colorScheme.onTertiary,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(48, 0, 0, 0),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                              ),
                              BoxShadow(
                                color: Color.fromARGB(48, 0, 0, 0),
                                offset: Offset(4, 0),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                bottom: 4.r, top: 0.r, start: 3.r),
                            child: IconButton(
                              onPressed: () {
                                context.goNamed(AppRouter.loginScreen);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Theme.of(context).colorScheme.tertiary,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppImages.shapOnTopEnd,
                    color: Theme.of(context).primaryColor,
                    width: 245.w,
                    height: 150.h,
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
                    Text(translation(context).forget_password,
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.r, bottom: 0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(translation(context).it_happens,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
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
                top: 340.r, bottom: 10.r, start: 40.r, end: 40.r),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Form(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
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
                                context.pushNamed(AppRouter.confirmPassword);
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
          ),
        ],
      ),
    );
  }
}
