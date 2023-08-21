// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/utilities/translation.dart';

import '../../router/app_router.dart';

class ConfirmPasswordSrceen extends StatefulWidget {
  const ConfirmPasswordSrceen({super.key});

  @override
  State<ConfirmPasswordSrceen> createState() => _ConfirmPasswordSrceenState();
}

class _ConfirmPasswordSrceenState extends State<ConfirmPasswordSrceen> {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
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
                    padding: EdgeInsetsDirectional.only(top: 80.r, start: 30.r),
                    child: Row(
                      children: [
                        Container(
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: Colors.white,
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
                                context.goNamed(AppRouter.confirmEmail);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
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
                      'assets/images/forget_password_icon2.png',
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
                    Text(translation(context).reset_successful,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Nunito_bold',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700)),
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
                top: 310.r, bottom: 10.r, start: 40.r, end: 40.r),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Form(
                key: formkey,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
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
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(translation(context).confirm_password,
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
                              fun: () {
                                context.goNamed(AppRouter.successfulScreen);
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
