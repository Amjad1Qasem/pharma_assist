import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/translation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passcontroller = TextEditingController();

  bool secure = true;

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          ListView(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 240.r, bottom: 10.r, start: 40.r, end: 40.r),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Form(
                    key: _formKey,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Text(translation(context).email,
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: 'Nunito',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold)),
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
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(translation(context).password,
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: 'Nunito',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          DefaultTextFormField(
                            controller: passcontroller,
                            keyboardType: TextInputType.emailAddress,
                            radius: 20.sp,
                          ),
                          TextButton(
                            onPressed: () {
                              context.goNamed(AppRouter.confirmEmail);
                            },
                            child: Text(translation(context).forget_password,
                                style: TextStyle(
                                    color: const Color(0xFF333333),
                                    fontFamily: 'Nunito',
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DefaultbButton(
                                textButton: translation(context).login,
                                onTap: () {
                                  // if (Form.of(context).validate()) {}
                                  context.goNamed(AppRouter.homeScreen);
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
                                  width: 140.w,
                                  height: 55.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
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
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  debugPrint('Facebook login');
                                },
                                child: Container(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  width: 140.w,
                                  height: 55.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
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
                              Text(translation(context).no_account,
                                  style: TextStyle(
                                      color: const Color(0xFF333333),
                                      fontFamily: 'Nunito',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600)),
                              TextButton(
                                onPressed: () {
                                  context.goNamed(AppRouter.registerScreen);
                                },
                                child: Text(translation(context).register_now,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
