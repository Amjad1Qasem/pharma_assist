// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/translation.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var FirstNamecontroller = TextEditingController();
  var LastNamecontroller = TextEditingController();
  var MobileNumbercontroller = TextEditingController();
  var BirthDatecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'assets/images/shap1_login_sreen.png',
                    width: 245.w,
                    height: 150.h,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.r, end: 40.r),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/icon_App.png',
                      width: 118.w,
                      height: 120.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pharma',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: const Color(0xff00A8B9),
                                  fontFamily: 'Nunito-Bold',
                                  fontSize: 42.sp,
                                  fontWeight: FontWeight.w500)),
                          Text('Assist',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: const Color(0xff00A8B9),
                                  fontFamily: 'Nunito-Bold',
                                  fontSize: 42.sp,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 100.h,
                child: Image.asset(
                  'assets/images/shap2_login_sreen.png',
                  width: double.infinity.w,
                  height: 150.h,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: 230.r, bottom: 20.r, start: 20.r, end: 20.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(translation(context).first_name,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Nunito',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 45.h,
                            child: DefaultTextFormField(
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
                          Text(translation(context).last_name,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Nunito',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 45.h,
                            child: DefaultTextFormField(
                              controller: LastNamecontroller,
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
                          Text(translation(context).mobile_number,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Nunito',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 45.h,
                            child: DefaultTextFormField(
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
                          Text(translation(context).birth_date,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Nunito',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 45.h,
                            child: DefaultTextFormField(
                              controller: BirthDatecontroller,
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
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Nunito',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 45.h,
                            child: DefaultTextFormField(
                              controller: emailcontroller,
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
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Nunito',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 45.h,
                            child: DefaultTextFormField(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultbButton(
                      textButton: translation(context).regaster,
                      fun: () {
                        context.goNamed(AppRouter.introScreen);
                        debugPrint('Login ok');
                      },
                      color: const Color(0xff00a8b9),
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
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 60.w,
                      color: const Color(0xFF333333),
                      height: 0.5.h,
                    ),
                    const Spacer(),
                    Text(translation(context).continue_with,
                        style: TextStyle(
                            color: const Color(0xFF333333),
                            fontFamily: 'Nunito',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Container(
                      width: 60.w,
                      color: const Color(0xFF333333),
                      height: 0.5.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint('google login');
                      },
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 160.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google_Icon.png',
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              translation(context).google,
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Nunito'),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        debugPrint('Facebook login');
                      },
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 160.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/facebook_Icon.png',
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              translation(context).facebook,
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Nunito'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(translation(context).do_you_have_account,
                        style: TextStyle(
                            color: const Color(0xFF333333),
                            fontFamily: 'Nunito',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600)),
                    TextButton(
                      onPressed: () {
                        context.goNamed(AppRouter.loginScreen);
                      },
                      child: Text(translation(context).login,
                          style: TextStyle(
                              color: const Color(0xFF00a8b9),
                              fontFamily: 'Nunito',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
