// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = useTextEditingController();
    final passcontroller = useTextEditingController();
    final FirstNamecontroller = useTextEditingController();
    final LastNamecontroller = useTextEditingController();
    final MobileNumbercontroller = useTextEditingController();
    final BirthDatecontroller = useTextEditingController();
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    final scure = useState(true);
    return DefaultScaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Background(),
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.shapOnTopEnd,
                          color: Theme.of(context).primaryColor,
                          width: MediaQuery.of(context).size.width / 1.7,
                          height: MediaQuery.of(context).size.height * 0.17)
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 100.h,
                    child: Image.asset(
                      AppImages.shapOnButtom,
                      color: Theme.of(context).primaryColor,
                      width: MediaQuery.of(context).size.width,
                      height: 150.h,
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                start: 20.sp,
                end: 20.sp,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 20.sp,
                      bottom: 30.sp,
                      end: 20.sp,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.iconLogin,
                          color: colors.iconAppColor,
                          width: 118.w,
                          height: 120.h,
                        ),
                        Text(translation(context).pharma,
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.bodyLarge),
                        Text(translation(context).assist,
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translation(context).firstName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                    child: DefaultTextFormField(
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.3),
                                      validation: const [],
                                      controller: FirstNamecontroller,
                                      keyboardType: TextInputType.emailAddress,
                                      radius: 15.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translation(context).lastName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                    child: DefaultTextFormField(
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.3),
                                      controller: LastNamecontroller,
                                      validation: const [],
                                      keyboardType: TextInputType.emailAddress,
                                      radius: 15.sp,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translation(context).mobileNumber,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                    child: DefaultTextFormField(
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.3),
                                      validation: const [],
                                      controller: MobileNumbercontroller,
                                      keyboardType: TextInputType.emailAddress,
                                      radius: 15.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translation(context).birthDate,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                    child: DefaultTextFormField(
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.3),
                                      controller: BirthDatecontroller,
                                      validation: const [],
                                      keyboardType: TextInputType.emailAddress,
                                      radius: 15.sp,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translation(context).email,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                    child: DefaultTextFormField(
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.3),
                                      controller: emailcontroller,
                                      validation: const [],
                                      keyboardType: TextInputType.emailAddress,
                                      radius: 15.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translation(context).password,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                    child: DefaultTextFormField(
                                      scureText: scure.value,
                                      sufix: scure.value
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      onSufixTap: () {
                                        scure.value = !scure.value;
                                      },
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.3),
                                      validation: const [],
                                      controller: passcontroller,
                                      keyboardType: TextInputType.emailAddress,
                                      radius: 15.sp,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultbButton(
                        textButton: translation(context).regaster,
                        onTap: () {
                          context.goNamed(AppRouter.introScreen);
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
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 80.w,
                          color: Theme.of(context).colorScheme.tertiary,
                          height: 0.5.h,
                        ),
                        const Spacer(),
                        Text(translation(context).continue_with,
                            style: Theme.of(context).textTheme.labelSmall),
                        const Spacer(),
                        Container(
                          width: 80.w,
                          color: Theme.of(context).colorScheme.tertiary,
                          height: 0.5.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 126),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            debugPrint('google login');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppImages.googleIcon,
                                  width: 30.w,
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            debugPrint('Facebook login');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppImages.facebookeIcon,
                                  width: 30.w,
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        translation(context).noAccount,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            translation(context).loginNow,
                            style: Theme.of(context).textTheme.labelMedium,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
