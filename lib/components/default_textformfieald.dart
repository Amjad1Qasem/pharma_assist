import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    super.key,
    required this.controller,
    required this.radius,
    required this.keyboardType,
    required this.validation,
    this.scureText = false,
    this.suffixIcon,
    required this.fillColor,
    this.sufix,
    this.onSufixTap,
    this.hintText,
    this.prefix,
    this.style,
    this.onEditingComplete,
    this.onChanged,
    this.num = 30,
    this.textAlignCenter = false,
  });
  final TextEditingController controller;
  final double radius;
  final TextInputType keyboardType;
  final List<FieldValidator> validation;
  final bool scureText;
  final Widget? suffixIcon;
  final Color fillColor;
  final IconData? sufix;
  final Function()? onSufixTap;
  final String? hintText;
  final IconData? prefix;
  final TextStyle? style;
  final void Function()? onEditingComplete;
  final Function(String)? onChanged;
  final int? num;
  final bool? textAlignCenter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: MultiValidator(validation),
      maxLines: 1,
      controller: controller,
      obscureText: scureText,
      textAlign: textAlignCenter! ? TextAlign.center : TextAlign.start,
      inputFormatters: [
        LengthLimitingTextInputFormatter(num),
      ],
      autovalidateMode: AutovalidateMode.always,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: const Color(0XFF333333)),
      keyboardType: keyboardType,
      onEditingComplete: () {
        FocusScope.of(context).nextFocus();
        onEditingComplete?.call();
      },
      decoration: InputDecoration(
        border: const UnderlineInputBorder(borderSide: BorderSide()),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.displayMedium,
        filled: true,
        fillColor: fillColor,
        prefixIcon: prefix != null
            ? Icon(Icons.search,
                size: 25.sp,
                color: Theme.of(context)
                    .colorScheme
                    .onSecondaryContainer
                    .withOpacity(0.8))
            : null,
        suffixIcon: sufix != null
            ? IconButton(onPressed: onSufixTap, icon: Icon(sufix))
            : null,
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 5),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.3),
            width: 0.5.w,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
