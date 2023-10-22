
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/model/classes.dart';

// ignore: must_be_immutable
class ImageSwiperModel extends StatelessWidget {
  ImageSwiperModel({
    super.key,
    required this.model,
  });

  ImagesSwiperModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image(
            image: AssetImage(model.swiperImage),
            fit: BoxFit.cover,
            width: 270.w,
            height: 130.h,
          ),
        ),
      ],
    );
  }
}
