import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pharma_assist/blocs/login/login_bloc.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';
import '../../constants/app_images.dart';

class PhoneNumberValidator extends FieldValidator<String> {
  static final RegExp _phoneNumberRegExp = RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+$');

  PhoneNumberValidator({String errorText = 'pleas confirm you number'})
      : super(errorText);

  @override
  bool isValid(String value) {
    return _phoneNumberRegExp.hasMatch(value);
  }
}

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = useTextEditingController();
    final passcontroller = useTextEditingController();
    late final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    final scure = useState(true);
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: DefaultScaffold(
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
                      textDirection: TextDirection.ltr,
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
            Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: 10.r, start: 40.r, end: 40.r),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.iconLogin,
                            color: colors.iconAppColor,
                            width: 118.w,
                            height: 120.h,
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.0.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(translation(context).pharmaAssist,
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(translation(context).email,
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      DefaultTextFormField(
                        fillColor: Theme.of(context)
                            .colorScheme
                            .onSecondary
                            .withOpacity(0.3),
                        validation:  [
                           PatternValidator(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+$', errorText: 'pleas confirm you number'),
                          // RequiredValidator(errorText: 'Email is required'),
                          // MinLengthValidator(8, errorText:' errorText MinLengthValidator')
                        ],
                        // validation: MultiValidator(validators),
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
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      DefaultTextFormField(
                        scureText: scure.value,
                        sufix: scure.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onSufixTap: () {
                          scure.value = !scure.value;
                          return null;
                        },
                        fillColor: Theme.of(context)
                            .colorScheme
                            .onSecondary
                            .withOpacity(0.3),
                        validation:  [
                             PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'password must have at least one special character')
                        ],
                        controller: passcontroller,
                        keyboardType: TextInputType.emailAddress,
                        radius: 20.sp,
                      ),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(AppRouter.confirmEmail,
                              argument: false);
                        },
                        child: Text(translation(context).forgetPassword,
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocConsumer<LoginBloc, LoginState>(
                            listener: (context, state) {
                              if (state is LoginSuccessed) {
                                context.goNamed(AppRouter.homeLayout);
                              }
                            },
                            builder: (context, state) {
                              return DefaultbButton(
                                loading: state is LoginLoading,
                                textButton: translation(context).login,
                                onTap: () {
                                  if (Form.of(context).validate()) {
                                    context.read<LoginBloc>().add(LoginProcess(
                                        emailcontroller.text,
                                        passcontroller.text));

                                    debugPrint(
                                        '${emailcontroller.text}/${passcontroller.text}');
                                    debugPrint('Login ok');
                                  }
                                },
                                color: colors.buttonColor,
                                colorText: Colors.white,
                                radius: 40.r,
                                width: 180.w,
                                height: 60.h,
                                fontsize: 28.sp,
                                fontweight: FontWeight.w500,
                              );
                            },
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
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
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/google_Icon.png',
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
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/facebook_Icon.png',
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
                                context.pushNamed(AppRouter.registerScreen);
                              },
                              child: Text(
                                translation(context).registerNow,
                                style: Theme.of(context).textTheme.labelMedium,
                              ))
                        ],
                      ),
                    ],
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
