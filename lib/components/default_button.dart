// import 'package:flutter/material.dart';
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/loading.dart';
import 'package:pharma_assist/themes/app_colors.dart';

class DefaultbButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onTap;
  final Color color;
  final Color colorText;
  final double radius;
  final double? width;
  final double height;
  final FontWeight fontweight;
  final double fontsize;
  final bool loading;

  const DefaultbButton({
    super.key,
    required this.textButton,
    required this.onTap,
    required this.color,
    required this.colorText,
    required this.radius,
    this.width,
    required this.height,
    required this.fontweight,
    required this.fontsize,
    this.loading = false,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 170.w,
        height: height,
        child: loading
            ? const Loading()
            : ElevatedButton(
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
                onPressed: loading ? null : onTap,
                child: Text(
                  textButton,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: fontsize,
                        fontWeight: fontweight,
                        color: AppColors.white,
                      ),
                ),
              ));
  }
}
