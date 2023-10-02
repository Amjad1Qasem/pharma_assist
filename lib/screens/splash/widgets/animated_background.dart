import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/themes/app_colors.dart';

import 'bg_shape.dart';

class AnimatedBackgound extends HookWidget {
  const AnimatedBackgound({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isFirstColor = useState(false);
    useEffect(() {
      final subscribtion =
          Stream.periodic(const Duration(seconds: 1)).listen((_) {
        isFirstColor.value = !isFirstColor.value;
      });
      return subscribtion.cancel;
    }, []);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            right: 0,
            left: size.width - 200.w,
            top: 0.h,
            bottom: 0.h,
            child: BgShape(
              color: isFirstColor.value
                  ? AppColors.lightBlue.withOpacity(0.5)
                  : AppColors.aqua.withOpacity(0.5),
              blurRadius: 50,
              width: 130.w,
              height: 150.h,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            bottom: 0,
            top: size.height - 300,
            left: 0,
            right: 0,
            child: BgShape(
              color: AppColors.darkPurple.withOpacity(0.4),
              blurRadius: 100,
              width: size.height,
              height: 150.h,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 10),
            curve: Curves.easeIn,
            top: 0,
            bottom: size.height - 700,
            left: 0,
            right: 0,
            child: BgShape(
              color: AppColors.purple.withOpacity(0.5),
              blurRadius: 50,
              width: 130.w,
              height: 150.h,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeIn,
            left: 0,
            right: size.width - 230,
            top: 0,
            bottom: 0,
            child: BgShape(
              color: isFirstColor.value
                  ? AppColors.aqua.withOpacity(0.5)
                  : AppColors.lightBlue.withOpacity(0.5),
              blurRadius: 50,
              width: 130.w,
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}
