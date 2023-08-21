import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

//TextFormField

class DefaultTextFormField extends StatefulWidget {
  const DefaultTextFormField({
    super.key,
    required this.controller,
    required this.radius,
    required this.keyboardType,
  });
  final TextEditingController controller;
  final double radius;
  final TextInputType keyboardType;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  final bool scureText = false;

  // final  Widget suffixIcon ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (input) {
        debugPrint(input);
      },
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
        //suffixIcon: suffixIcon,
        labelStyle: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black),
        filled: true,
        fillColor: const Color.fromARGB(255, 118, 118, 128).withOpacity(0.2),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 118, 118, 128).withOpacity(0.2),
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
