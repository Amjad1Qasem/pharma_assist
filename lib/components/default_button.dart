// import 'package:flutter/material.dart';
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class DefaultbButton extends StatelessWidget {
  final String textButton;
  final VoidCallback fun;
  final Color color;
  final Color colorText;
  final double radius;
  final double width;
  final double height;
  final FontWeight fontweight;
  final double fontsize;

  const DefaultbButton({
    super.key,
    required this.textButton,
    required this.fun,
    required this.color,
    required this.colorText,
    required this.radius,
    required this.width,
    required this.height,
    required this.fontweight,
    required this.fontsize,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ButtonStyle(
            alignment: Alignment.center,
            splashFactory: InkRipple.splashFactory,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius)),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(colorText),
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: fun,
          child: Text(
            textButton,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: fontsize,
                fontWeight: fontweight),
          ),
        ));
  }
}
        