// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class CompanyModelItem extends StatelessWidget {
  CompanyModelItem({super.key, required this.model});
  CompanyModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('Compani itemes');

            context.pushNamed(AppRouter.companyData,
                argument: (model.companyName));
          },
          child: Container(
              width: 100.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0xffe6f7f0)),
              child: Padding(
                padding: EdgeInsets.all(5.0.sp),
                child: Image.asset(
                  model.companyIcon,
                  fit: BoxFit.fill,
                  width: 70.w,
                  height: 50.h,
                ),
              )),
        ),
      ],
    );
  }
}
