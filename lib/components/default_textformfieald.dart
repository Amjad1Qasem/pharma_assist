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
    this.scureText,
    // this.suffixIcon,
  });
  final TextEditingController controller;
  final double radius;
  final TextInputType keyboardType;
  bool? scureText = false;
  // Widget? suffixIcon;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  bool scureText = false;

  // late Widget suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (input) {
        debugPrint(input);
      },
      validator: RequiredValidator(errorText: 'djasiopjdposaj'),
      maxLines: 1,
      controller: widget.controller,
      obscureText: scureText,
      // autofocus: false,
      //showCursor: true,
      //autovalidateMode: AutovalidateMode.always,
      style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        // labelText: 'sdd',
        //hintText: 'dsadasd',
        // suffix: ,
        labelStyle: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onSecondary,
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
