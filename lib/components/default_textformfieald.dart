import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

//TextFormField

class DefaultTextFormField extends StatefulWidget {
  DefaultTextFormField({
    super.key,
    required this.controller,
    required this.radius,
    required this.keyboardType,
    required this.validation,
    required this.scureText,
    this.suffixIcon,
    required this.fillColor,
    this.sufix,
    this.sufixfun,
  });
  final TextEditingController controller;
  final double radius;
  final TextInputType keyboardType;
  final List<FieldValidator> validation;
  bool scureText = false;
  Widget? suffixIcon;
  final Color fillColor;
  IconData? sufix;
  final Function()? sufixfun;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (input) {
        debugPrint(input);
      },
      validator: MultiValidator(widget.validation),
      maxLines: 1,
      controller: widget.controller,
      obscureText: widget.scureText,
      autovalidateMode: AutovalidateMode.always,
      style: Theme.of(context).textTheme.displayMedium,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(borderSide: BorderSide.none),
        filled: true,
        fillColor: widget.fillColor,
        suffixIcon: widget.sufix != null
            ? IconButton(onPressed: widget.sufixfun, icon: Icon(widget.sufix))
            : null,
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 5),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
      ),
    );
  }
}


// Widget defaultTextFormField({
//   required TextEditingController controller,
//   required TextInputType keyboard,
//   required String labText,
//   required double radius,
//   MultiValidator? validator,
//   required Function? Function() sufixfun,
//   required String hintText,
//   IconData? sufix,
//   IconData? prifix,
//   bool securTrue = false,
//   bool readonly = false,
// }) =>
//     TextFormField(
//       //cursorColor: Colors.red,
//       readOnly: readonly,
//       validator: validator!,
//       style: const TextStyle(
//         color: Color(0xFF333333),
//       ),
//       obscureText: securTrue,
//       controller: controller,
//       keyboardType: keyboard,
//       decoration: InputDecoration(
//         // focusColor: Colors.deepOrange,
//         hintText: hintText,
//         contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//         filled: true,
//         fillColor: const Color(0xffCFD9F0),
//         labelText: labText,
//         labelStyle: const TextStyle(
//             fontFamily: 'cairo', fontSize: 20, color: Colors.black54),
//         prefixIcon: prifix != null ? Icon(prifix, color: Colors.black54) : null,
//         suffixIcon: sufix != null

//             ? IconButton(onPressed: sufixfun, icon: Icon(sufix))
//             : null,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
//       ),
//     );
