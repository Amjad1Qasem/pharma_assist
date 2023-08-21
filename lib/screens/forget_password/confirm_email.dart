// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/utilities/translation.dart';

import '../../router/app_router.dart';

class ConfirmEmailSrceen extends StatefulWidget {
  const ConfirmEmailSrceen({super.key});

  @override
  State<ConfirmEmailSrceen> createState() => _ConfirmEmailSrceenState();
}

class _ConfirmEmailSrceenState extends State<ConfirmEmailSrceen> {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
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
                      'assets/images/forget_password_icon1.png',
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
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Nunito_bold',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.r, bottom: 0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(translation(context).it_happens,
                        style: TextStyle(
                            color: const Color(0xFF333333),
                            fontFamily: 'Nunito',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600)),
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
                top: 340.r, bottom: 10.r, start: 40.r, end: 40.r),
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
                          height: 50.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultbButton(
                              textButton: translation(context).conti,
                              fun: () {
                                context.pushNamed(AppRouter.confirmPassword);
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
