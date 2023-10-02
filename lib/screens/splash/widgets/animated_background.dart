import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/themes/app_colors.dart';

import 'bg_shape.dart';

class AnimatedBackgound extends StatefulWidget {
  const AnimatedBackgound({
    super.key,
  });

  @override
  State<AnimatedBackgound> createState() => _AnimatedBackgoundState();
}

class _AnimatedBackgoundState extends State<AnimatedBackgound> {
  bool isBottomShapeUp = false;
  bool isTopShapeUp = false;
  bool isLeftshapup = false;
  bool isRightshapup = false;
  bool isFirstColor = false;

  late final StreamSubscription subscribtion;

  @override
  void dispose() {
    subscribtion.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    subscribtion = Stream.periodic(const Duration(seconds: 1)).listen((_) {
      isBottomShapeUp = !isBottomShapeUp;
      isLeftshapup = !isLeftshapup;
      isRightshapup = !isRightshapup;
      isTopShapeUp = !isTopShapeUp;
      isFirstColor = !isFirstColor;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            // right: isRightshapup ? size.width - 200.w : 0,
            // left: isRightshapup ? 0 : size.width - 200.w,
            right: 0,
            left: size.width - 200.w,
            top: 0.h,
            bottom: 0.h,
            child: BgShape(
              color: isFirstColor
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
            // bottom: isBottomShapeUp ? size.height - 150.h : 0,
            // top: isBottomShapeUp ? 0 : size.height - 150.h,
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
            // top: isBottomShapeUp ? size.height - 150.h : 0,
            // bottom: isBottomShapeUp ? 0 : size.height - 150.h,
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
            // left: isLeftshapup ? size.width - 200.w : 0,
            // right: isLeftshapup ? 0 : size.width - 200.w,
            left: 0,
            right: size.width - 230,
            top: 0,
            bottom: 0,
            child: BgShape(
              color: isFirstColor
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
