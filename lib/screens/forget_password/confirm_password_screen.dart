// ignore_for_file: camel_case_types
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

class ConfirmPasswordSrceen extends HookWidget {
  const ConfirmPasswordSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    final scurePassNew = useState(true);
    final scurePassold = useState(true);
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    final confirmPasscontroller = useTextEditingController();
    final passcontroller = useTextEditingController();
    return DefaultScaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                      AppImages.confirmPassword,
                      width: 180.w,
                      height: 180.h,
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsetsDirectional.only(
              //     start: 40.r,
              //     end: 40,
              //     top: 10.r,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(translation(context).resetSuccessful,
              //           style: Theme.of(context).textTheme.titleLarge),
              //     ],
              //   ),
              // ),
              SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.7,
                  child: Center(
                    child: Form(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.sp,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(translation(context).password,
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            DefaultTextFormField(
                              scureText: scurePassold.value,
                              sufix: scurePassold.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              onSufixTap: () {
                                scurePassold.value = !scurePassold.value;
                              },
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondary
                                  .withOpacity(0.3),
                              validation: const [],
                              controller: passcontroller,
                              keyboardType: TextInputType.emailAddress,
                              radius: 20.sp,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text(translation(context).confirmPassword,
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            DefaultTextFormField(
                              scureText: scurePassNew.value,
                              sufix: scurePassNew.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              onSufixTap: () {
                                scurePassNew.value = !scurePassNew.value;
                              },
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondary
                                  .withOpacity(0.3),
                              controller: confirmPasscontroller,
                              validation: const [],
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
              const Spacer(),
              SizedBox(
                // height: 15,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  AppImages.shapOnButtom,
                  color: Theme.of(context).primaryColor,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 8.5,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
