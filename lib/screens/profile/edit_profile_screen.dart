import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
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
    FocusNode focusFirstName = FocusNode();
    FocusNode focusLastName = FocusNode();
    FocusNode focusEmail = FocusNode();
    FocusNode focusPass = FocusNode();
    FocusNode focusNumber = FocusNode();
    FocusNode focusBirthDate = FocusNode();
    FocusNode focusSpecalty = FocusNode();

    return DefaultScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0.sp),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Center(
              child: Form(
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
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translation(context).first_name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DefaultTextFormField(
                                focus: focusFirstName,
                                onFieldSubmitted: (val) {
                                  FocusScope.of(context)
                                      .requestFocus(focusLastName);
                                },
                                scureText: false,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                validation: const [],
                                controller: firsNameController,
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
                                translation(context).last_name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DefaultTextFormField(
                                focus: focusLastName,
                                onFieldSubmitted: (val) {
                                  FocusScope.of(context)
                                      .requestFocus(focusEmail);
                                },
                                scureText: false,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                validation: const [],
                                controller: lastNameController,
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
                                translation(context).email,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DefaultTextFormField(
                                focus: focusEmail,
                                onFieldSubmitted: (val) {
                                  FocusScope.of(context)
                                      .requestFocus(focusBirthDate);
                                },
                                scureText: false,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                validation: const [],
                                controller: emailController,
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
                                translation(context).birth_date,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DefaultTextFormField(
                                focus: focusBirthDate,
                                onFieldSubmitted: (val) {
                                  FocusScope.of(context)
                                      .requestFocus(focusNumber);
                                },
                                scureText: false,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                validation: const [],
                                controller: birthDateController,
                                radius: 6.r,
                                keyboardType: TextInputType.none,
                                onTap: () async {
                                  DateTime? date = await showDatePicker(
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
                          SizedBox(
                            height: 10.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translation(context).mobile_number,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DefaultTextFormField(
                                focus: focusNumber,
                                onFieldSubmitted: (val) {
                                  FocusScope.of(context)
                                      .requestFocus(focusSpecalty);
                                },
                                scureText: false,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                validation: const [],
                                controller: mobileNumberController,
                                radius: 6.r,
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
                                translation(context).specialty,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DefaultTextFormField(
                                focus: focusSpecalty,
                                scureText: false,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                validation: const [],
                                controller: specialtyController,
                                radius: 6.r,
                                keyboardType: TextInputType.name,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(15.r)),
                            child: TextButton(
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
                                )))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
