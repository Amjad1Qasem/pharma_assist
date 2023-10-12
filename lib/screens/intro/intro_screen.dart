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

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  String selectedValue = 'Student';
  List<String> dropdownValues = ['Doctor', 'Student', 'Pharmacist', 'Other'];
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    return DefaultScaffold(
      body: Stack(
        children: [
          const Background(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    AppImages.shapOnTopStart,
                    color: Theme.of(context).primaryColor,
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80.sp, left: 100.sp),
                    child: Center(
                      child: Column(
                        textDirection: TextDirection.rtl,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppImages.iconLogin,
                            color: colors.iconAppColor,
                            height: 200.h,
                            width: 300.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 40.0.sp),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(translation(context).pharmaAssist,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15.sp,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(translation(context).welcomeThere,
                        style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      AppImages.persIntro,
                      height: 220.h,
                      width: 220.w,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.r, bottom: 20.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: DropdownButton<String>(
                    iconSize: 35.sp,
                    dropdownColor: Theme.of(context).colorScheme.onTertiary,
                    iconEnabledColor: Theme.of(context).colorScheme.tertiary,
                    alignment: Alignment.topCenter,
                    isExpanded: true,
                    style: Theme.of(context).textTheme.bodyMedium,
                    padding: EdgeInsetsDirectional.only(
                        top: 5.r, start: 20.r, end: 20.r, bottom: 5.r),
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      }
                    },
                    items: dropdownValues.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.sp),
                child: DefaultbButton(
                    onTap: () {
                      context.goNamed(AppRouter.homeLayout);
                    },
                    color: colors.buttonColor,
                    colorText: Colors.white,
                    radius: 40.r,
                    width: 180.w,
                    height: 60.h,
                    fontsize: 28.sp,
                    fontweight: FontWeight.w500,
                    textButton: translation(context).conti),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
