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
  late final StreamSubscription subscribtion;

  @override
  void dispose() {
    subscribtion.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    subscribtion = Stream.periodic(const Duration(seconds: 5)).listen((_) {
      isBottomShapeUp = !isBottomShapeUp;
      isLeftshapup = !isLeftshapup;
      isRightshapup = !isRightshapup;
      isTopShapeUp = !isTopShapeUp;
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
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            right: isRightshapup ? size.width - 130.w : 0,
            left: isRightshapup ? 0 : size.width - 130.w,
            top: 0,
            bottom: 0,
            child: BgShape(
              color: AppColors.lightBlue.withOpacity(0.5),
              blurRadius: 25,
              width: 130.w,
              height: 150.h,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeIn,
            bottom: isBottomShapeUp ? size.height - 150.h : 0,
            top: isBottomShapeUp ? 0 : size.height - 150.h,
            left: 0,
            right: 0,
            child: BgShape(
              color: AppColors.darkPurple.withOpacity(0.5),
              blurRadius: 25,
              width: 130.w,
              height: 150.h,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 650),
            curve: Curves.easeIn,
            top: isBottomShapeUp ? size.height - 150.h : 0,
            bottom: isBottomShapeUp ? 0 : size.height - 150.h,
            left: 0,
            right: 0,
            child: BgShape(
              color: AppColors.purple.withOpacity(0.5),
              blurRadius: 25,
              width: 130.w,
              height: 150.h,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeIn,
            left: isLeftshapup ? size.width - 130.w : 0,
            right: isLeftshapup ? 0 : size.width - 130.w,
            top: 0,
            bottom: 0,
            child: BgShape(
              color: AppColors.aqua.withOpacity(0.5),
              blurRadius: 25,
              width: 130.w,
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}
