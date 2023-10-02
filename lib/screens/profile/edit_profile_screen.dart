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

class EditProfileScreen extends HookWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firsNameController = useTextEditingController();
    final TextEditingController lastNameController = useTextEditingController();
    final TextEditingController emailController = useTextEditingController();
    final TextEditingController birthDateController =
        useTextEditingController();
    final TextEditingController mobileNumberController =
        useTextEditingController();
    final TextEditingController specialtyController =
        useTextEditingController();
    late final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    return DefaultScaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(30.0.sp),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: context.pop,
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 30.sp,
                              color: Theme.of(context).colorScheme.outline,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                context.pushNamed(AppRouter.editPassword,
                                    argument: (
                                      firsNameController.text,
                                      lastNameController.text,
                                      emailController.text,
                                      birthDateController.text,
                                      mobileNumberController.text,
                                      specialtyController.text,
                                    ));
                              },
                              child: Text(
                                translation(context).next,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.iconLogin,
                            width: 100.w,
                            height: 100.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Form(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  translation(context).firstName,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                DefaultTextFormField(
                                    fillColor: Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer,
                                    validation: const [],
                                    controller: firsNameController,
                                    radius: 10.r,
                                    keyboardType: TextInputType.text),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  translation(context).lastName,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                DefaultTextFormField(
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  validation: const [],
                                  controller: lastNameController,
                                  radius: 10.r,
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
                                  translation(context).email,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                DefaultTextFormField(
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  validation: const [],
                                  controller: emailController,
                                  radius: 10.r,
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
                                  translation(context).specialty,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                DefaultTextFormField(
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  validation: const [],
                                  controller: specialtyController,
                                  radius: 10.r,
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
                                  translation(context).mobileNumber,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                DefaultTextFormField(
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  validation: const [],
                                  controller: mobileNumberController,
                                  radius: 10.r,
                                  keyboardType: TextInputType.number,
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
                                  translation(context).birthDate,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                DefaultTextFormField(
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  validation: const [],
                                  controller: birthDateController,
                                  radius: 10.r,
                                  suffixIcon: const Icon(Icons.calendar_month),
                                  keyboardType: TextInputType.none,
                                  onSufixTap: () async {
                                    DateTime? date = await showDatePicker(
                                        builder: (BuildContext context,
                                            Widget? child) {
                                          return Theme(
                                            data: ThemeData.light().copyWith(
                                              useMaterial3: true,
                                              // buttonBarTheme: ButtonBarThemeData(buttonTextTheme: ),
                                              buttonTheme:
                                                  const ButtonThemeData(
                                                      textTheme: ButtonTextTheme
                                                          .primary),
                                            ),
                                            child: child!,
                                          );
                                        },
                                        context: context,
                                        initialDate: DateTime.utc(2016, 1, 1),
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime(2016)
                                            .add(const Duration(days: 30)));
                                    if (date != null) {
                                      birthDateController.text =
                                          '${date.year}/${date.month}/${date.day}';
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                    child: DefaultbButton(
                      textButton: translation(context).confirm,
                      onTap: () {
                        context.pop();
                        debugPrint('the values has edited');
                      },
                      color: colors.buttonColor,
                      colorText: Colors.white,
                      radius: 40.r,
                      height: 60.h,
                      fontsize: 28.sp,
                      fontweight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
