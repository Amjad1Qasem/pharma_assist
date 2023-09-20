import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class EditPasswordScreen extends StatefulWidget {
  const EditPasswordScreen({
    super.key,
    required this.firsName,
    required this.lastName,
    required this.email,
    required this.birthDate,
    required this.mobileNumber,
    required this.specialty,
  });
  final String firsName;
  final String lastName;
  final String email;
  final String birthDate;
  final String mobileNumber;
  final String specialty;

  @override
  State<EditPasswordScreen> createState() => _EditPasswordScreenState();
}

class _EditPasswordScreenState extends State<EditPasswordScreen> {
  late final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
  PageController pageViewController = PageController();
  bool scurePassNew = true;
  bool scurePassold = true;
  bool scurePassConfirm = true;
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0.sp),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: context.pop,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30.sp,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.iconLogin,
                        width: 120.w,
                        height: 120.h,
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 50.h),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            translation(context).old_password,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          DefaultTextFormField(
                            scureText: scurePassNew,
                            sufix: scurePassNew
                                ? Icons.visibility
                                : Icons.visibility_off,
                            sufixfun: () {
                              setState(() {
                                scurePassNew = !scurePassNew;
                              });
                              return null;
                            },
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                            validation: const [],
                            controller: oldPasswordController,
                            radius: 6.r,
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            translation(context).new_password,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          DefaultTextFormField(
                            scureText: scurePassold,
                            sufix: scurePassold
                                ? Icons.visibility
                                : Icons.visibility_off,
                            sufixfun: () {
                              setState(() {
                                scurePassold = !scurePassold;
                              });
                              return null;
                            },
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                            validation: const [],
                            controller: newPasswordController,
                            radius: 6.r,
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.birthDate),
                          Text(
                            translation(context).confirm_password,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          DefaultTextFormField(
                            scureText: scurePassConfirm,
                            sufix: scurePassConfirm
                                ? Icons.visibility
                                : Icons.visibility_off,
                            sufixfun: () {
                              setState(() {
                                scurePassConfirm = !scurePassConfirm;
                              });
                              return null;
                            },
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                            validation: const [],
                            controller: confirmPasswordController,
                            radius: 6.r,
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultbButton(
                    textButton: translation(context).confirm,
                    onTap: () {
                      context.pushNamed(AppRouter.confirmPassword);
                      debugPrint('the values has edited');
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
    );
  }
}
