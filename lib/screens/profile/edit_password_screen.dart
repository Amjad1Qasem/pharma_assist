import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_button.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class EditPasswordScreen extends HookWidget {
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
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    final scurePassNew = useState(true);
    final scurePassold = useState(true);
    final scurePassConfirm = useState(true);
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 12),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              translation(context).oldPassword,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            DefaultTextFormField(
                              scureText: scurePassNew.value,
                              sufix: scurePassNew.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              onSufixTap: () {
                                scurePassNew.value = !scurePassNew.value;
                                return null;
                              },
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
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
                              translation(context).newPassword,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            DefaultTextFormField(
                              scureText: scurePassold.value,
                              sufix: scurePassold.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              onSufixTap: () {
                                scurePassold.value = !scurePassold.value;
                              },
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
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
                            Text(
                              translation(context).confirmPassword,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            DefaultTextFormField(
                              scureText: scurePassConfirm.value,
                              sufix: scurePassConfirm.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              onSufixTap: () {
                                scurePassConfirm.value =
                                    !scurePassConfirm.value;
                              },
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
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
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultbButton(
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
                    ],
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
