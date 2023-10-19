// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class CategoryModelItem extends StatelessWidget {
  CategoryModelItem({super.key, required this.model});
  CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed(AppRouter.categoryData,
                argument: (model.categoriesName));
          },
          child: Container(
              width: 160.w,
              height: 210.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
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
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0.sp),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Image.asset(
                        model.categoriesImage,
                        fit: BoxFit.fill,
                        width: 154.w,
                        height: 120.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.r, bottom: 5.0.r),
                    child: Container(
                      height: 0.5.h,
                      color: Colors.black45,
                      width: 120.w,
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(10.0.sp),
                    child: Text(
                      model.categoriesName,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: const Color(0xFF333333)),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
                ],
              )),
        ),
      ],
    );
  }
}
