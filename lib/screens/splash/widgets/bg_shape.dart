import 'package:flutter/material.dart';
import 'package:pharma_assist/themes/app_colors.dart';

class BgShape extends StatelessWidget {
  const BgShape(
      {super.key,
      required this.color,
      required this.blurRadius,
      required this.width,
      required this.height});

  final Color color;

  final double blurRadius;

  final double width;

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.transparent,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: blurRadius,
          ),
        ],
      ),
    );
  }
}
