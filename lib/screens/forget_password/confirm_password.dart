// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class ConfirmPasswordSrceen extends StatefulWidget {
  const ConfirmPasswordSrceen({super.key});

  @override
  State<ConfirmPasswordSrceen> createState() => _ConfirmPasswordSrceenState();
}

class _ConfirmPasswordSrceenState extends State<ConfirmPasswordSrceen> {
  var confirmPasscontroller = TextEditingController();
  var passcontroller = TextEditingController();
  FocusNode focusConfirmPass = FocusNode();
  FocusNode focusPass = FocusNode();

  late final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundScreen(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
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
                            GestureDetector(
                              onTap: () {
                                debugPrint('object');
                                context.pushNamed(AppRouter.confirmEmail);
                              },
                              child: Container(
                                width: 36.w,
                                height: 36.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                  boxShadow: [
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
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  size: 25.sp,
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
                    padding: EdgeInsetsDirectional.only(top: 80.r, start: 30.r),
                    child: Row(
                      children: [
                        Container(
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: Theme.of(context).colorScheme.onTertiary,
                            boxShadow: [
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
                                context.pushNamed(AppRouter.confirmEmail);
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
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.r, end: 40.r),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.confirmPassword,
                      width: 200.w,
                      height: 200.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 40.r, top: 20.r, bottom: 5.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(translation(context).resetSuccessful,
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
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
          Center(
            child: Form(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 2,
                    horizontal: MediaQuery.of(context).size.width / 12,
                  ),
                  // ignore: avoid_unnecessary_containers
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(translation(context).password,
                                style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        DefaultTextFormField(
                          focus: focusPass,
                          onFieldSubmitted: (val) {
                            FocusScope.of(context)
                                .requestFocus(focusConfirmPass);
                          },
                          fillColor: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withOpacity(0.3),
                          validation: const [],
                          controller: passcontroller,
                          keyboardType: TextInputType.emailAddress,
                          scureText: true,
                          radius: 20.sp,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(translation(context).confirmPassword,
                                style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        DefaultTextFormField(
                          focus: focusConfirmPass,
                          fillColor: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withOpacity(0.3),
                          controller: confirmPasscontroller,
                          validation: const [],
                          scureText: true,
                          keyboardType: TextInputType.emailAddress,
                          radius: 20.r,
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
                                context.goNamed(AppRouter.successfulScreen);
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

  @override
  void dispose() {
    passcontroller.clear();
    confirmPasscontroller.clear();
    super.dispose();
  }
}
