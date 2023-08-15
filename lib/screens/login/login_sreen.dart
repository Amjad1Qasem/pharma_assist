import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
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
                  padding: EdgeInsetsDirectional.only(
                      bottom: 10.r, start: 40.r, end: 40.r),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon_App.png',
                        width: 118.w,
                        height: 130.h,
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
                                    fontFamily: 'Nunito',
                                    fontSize: 45.sp,
                                    fontWeight: FontWeight.w800)),
                            Text('Assist',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: const Color(0xff00A8B9),
                                    fontFamily: 'Nunito',
                                    fontSize: 45.sp,
                                    fontWeight: FontWeight.w800)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 100,
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
                  top: 110.r, bottom: 10.r, start: 40.r, end: 40.r),
              // ignore: avoid_unnecessary_containers
              child: Container(
                //   color: const Color.fromARGB(255, 209, 220, 240),
                child: Form(
                  key: formkey,
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text('Email',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'Nunito',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        DefaultTextFormField(
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          radius: 20.sp,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Text('Password',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'Nunito',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        DefaultTextFormField(
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          radius: 20.sp,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Forget Password ? ',
                              style: TextStyle(
                                  color: const Color(0xFF333333),
                                  fontFamily: 'Nunito',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultbButton(
                              textButton: 'Regaster',
                              fun: () {},
                              color: const Color(0xff00a8b9),
                              colorText: Colors.white,
                              radius: 30,
                              width: 200,
                              height: 65,
                              fontsize: 25,
                              fontweight: FontWeight.w700,
                            ),
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
      ),
    );
  }
}
