import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/botton_back.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

// ignore: must_be_immutable
class CategorySreen extends StatelessWidget {
  CategorySreen({super.key, this.hasBackButton = true});

  late List<CategoryModel> listOfCategoryItems = [
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon1.png',
        categoriesName: 'categoriesNma1'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon2.png',
        categoriesName: 'categoriesNma2'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon3.png',
        categoriesName: 'categoriesNma3'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon4.png',
        categoriesName: 'categoriesNma4'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon5.png',
        categoriesName: 'categoriesNma5'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon6.png',
        categoriesName: 'categoriesNma6'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon1.png',
        categoriesName: 'categoriesName'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon2.png',
        categoriesName: 'categoriesName'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon3.png',
        categoriesName: 'categoriesName'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon4.png',
        categoriesName: 'categoriesName'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon5.png',
        categoriesName: 'categoriesName'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon6.png',
        categoriesName: 'categoriesName'),
  ];

  final bool hasBackButton;

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      !hasBackButton
                          ? const SizedBox()
                          : BottonBack(
                              onTap: () => context.pop(),
                            ),
                      Text(
                        translation(context).categories,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Image(
                        image: const AssetImage(AppImages.iconLogin),
                        fit: BoxFit.cover,
                        width: 45.w,
                        height: 55.h,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.all(20.sp),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 1,
                              crossAxisSpacing: 9,
                              childAspectRatio: 12 / 16,
                              crossAxisCount: 2),
                      itemCount: listOfCategoryItems.length,
                      itemBuilder: (context, index) =>
                          CategoryModelItem(model: listOfCategoryItems[index])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names

class CategoryModelItem extends StatelessWidget {
  const CategoryModelItem({
    super.key,
    required this.model,
  });
  final CategoryModel model;
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
                  color: Theme.of(context).colorScheme.secondary),
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
                        // ignore: unnecessary_string_interpolations

                        model.categoriesImage,

                        fit: BoxFit.fill,

                        width: 154.w,

                        height: 120.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.sp, bottom: 5.0.sp),
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
                      // ignore: unnecessary_string_interpolations

                      model.categoriesName,

                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
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
