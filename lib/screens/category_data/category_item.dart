import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key, required this.model});
  final DetailsMedModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(AppRouter.detailsMed);
      },
      child: Container(
          padding: EdgeInsets.all(5.sp),
          height: 120.h,
          width: double.infinity.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: Theme.of(context).colorScheme.onTertiaryContainer),
          child: ListTile(
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 30.sp,
                  color: Colors.red,
                )),
            title: Text(
              model.categoriesName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            subtitle: Text(
              model.titleText[0],
              style: Theme.of(context).textTheme.displayMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )),
    );
  }
}
