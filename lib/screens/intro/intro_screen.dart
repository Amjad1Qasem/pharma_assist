import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/router/app_router.dart';
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
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/shap3_login_sreen.png',
                color: const Color(0xff00a8b9),
                height: 330.h,
                width: 533.w,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: 90.r,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/Icon_app2.png',
                      color: const Color(0xff00a8b9),
                      height: 240.h,
                      width: 300.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 15.r,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(translation(context).welcome_there,
                    style: TextStyle(
                        color: const Color(0xFF333333),
                        fontFamily: 'Nunito-Bold',
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset(
                  'assets/images/person_intro.png',
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
                  color: const Color(0XFFefeff0),
                  borderRadius: BorderRadius.circular(20.r)),
              child: DropdownButton<String>(
                iconSize: 35.sp,
                iconEnabledColor: const Color(0xff00a8b9),
                alignment: Alignment.topCenter,
                isExpanded: true,
                style: TextStyle(
                    color: const Color(0xFF333333),
                    fontFamily: 'Nunito-Bold',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
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
                  context.goNamed(AppRouter.homeScreen);
                },
                color: const Color(0xff00a8b9),
                colorText: Colors.white,
                radius: 40.r,
                width: 180.w,
                height: 60.h,
                fontsize: 28.sp,
                fontweight: FontWeight.w500,
                textButton: translation(context).conti),
          ),
          AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(microseconds: 1000),
            height: 38.h,
            width: 110.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.r),
                color: const Color(0xff1b717a)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedPositioned(
                    curve: Curves.easeIn,
                    left: toggleValue ? 45.0.sp : 0.0.sp,
                    right: toggleValue ? 0.0.sp : 45.0.sp,
                    duration: const Duration(
                      microseconds: 1000,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          toggleValue = !toggleValue;
                        });
                      },
                      child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 1000),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return ScaleTransition(
                              // ignore: sort_child_properties_last
                              child: child,
                              scale: animation,
                            );
                          },
                          child: toggleValue
                              ? Padding(
                                  padding: EdgeInsets.all(5.0.sp),
                                  child: Container(
                                    width: 70.w,
                                    height: 30.h,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255)),
                                    child: Center(
                                      child: Text(
                                        'Ar',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.all(5.0.sp),
                                  child: Container(
                                    height: 30.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255)),
                                    child: Center(
                                      child: Text(
                                        'En',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                )),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
