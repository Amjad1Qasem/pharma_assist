import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/translation.dart';

// ignore: must_be_immutable
class CategorySreen extends StatelessWidget {
  CategorySreen({super.key});

  late List<CategoryModel> listOfCategoryItems = [
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon1.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon2.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon3.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon4.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon5.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon6.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon1.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon2.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon3.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon4.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon5.png',
        categoriesNmae: 'categoriesNmae'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon6.png',
        categoriesNmae: 'categoriesNmae'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 36.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: Colors.white,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                          bottom: 4.r, top: 0.r, start: 3.r),
                      child: IconButton(
                        onPressed: () {
                          context.goNamed(AppRouter.homeScreen);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    translation(context).categories,
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 22.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Image(
                    image: const AssetImage(
                      'assets/images/icon_App.png',
                    ),
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 9,
                      //مسؤلة عن طول الايتم
                      childAspectRatio: 12 / 16,
                      crossAxisCount: 2),
                  itemCount: listOfCategoryItems.length,
                  itemBuilder: (context, index) =>
                      buildCategoryModel(listOfCategoryItems[index])),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget buildCategoryModel(CategoryModel Model) => Row(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('Category itemes');
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
                        // ignore: unnecessary_string_interpolations
                        '${Model.categoriesImage}',
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
                      // ignore: unnecessary_string_interpolations
                      '${Model.categoriesNmae}',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
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
