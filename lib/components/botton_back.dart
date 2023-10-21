import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';

class BottonBack extends StatelessWidget {
  const BottonBack({
    super.key,
    required this.onTap,
  });
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsThemeExtention>()!;
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 36.w,
            height: 36.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: colors.floatingBgColor,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(48, 0, 0, 0),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: Color.fromARGB(48, 0, 0, 0),
                  offset: Offset(4, 0),
                  blurRadius: 4,
                )
              ],
            ),
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.tertiary,
              size: 28.sp,
            ),
          ),
        ),
      ],
    );
  }
}
