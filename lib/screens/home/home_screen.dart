// ignore_for_file: must_be_immutable, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ImagesSwiperModel> listOfImageSwiper = [
    ImagesSwiperModel(swiperImage: 'assets/images/image_swiper1.png'),
    ImagesSwiperModel(swiperImage: 'assets/images/image_swiper2.png'),
    ImagesSwiperModel(swiperImage: 'assets/images/image_swiper3.png'),
  ];
  List<CompanyModel> listOfCompanyItems = [
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon1.png',
        companyName: 'companyName'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon2.png',
        companyName: 'companyName'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon3.png',
        companyName: 'companyName'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon4.png',
        companyName: 'companyName'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon5.png',
        companyName: 'companyName'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon6.png',
        companyName: 'companyName'),
  ];
  List<CategoryModel> listOfCategoryItems = [
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon1.png',
        categoriesName: 'categoriesNmaq'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon2.png',
        categoriesName: 'categoriesNames'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon3.png',
        categoriesName: 'categoriesNamed'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon4.png',
        categoriesName: 'categoriesNamefd'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon5.png',
        categoriesName: 'categoriesNamec'),
    CategoryModel(
        categoriesImage: 'assets/images/compani_Icon6.png',
        categoriesName: 'categoriesName'),
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundScreen(),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Swiper(
                    containerWidth: 500.w,
                    containerHeight: 500.h,
                    autoplay: true,
                    duration: 200,
                    curve: Curves.easeIn,
                    itemBuilder: (context, index) =>
                        buildImagesSwiperModel(listOfImageSwiper[index]),
                    itemCount: listOfImageSwiper.length,
                    itemWidth: 3000.w,
                    layout: SwiperLayout.STACK,
                    indicatorLayout: PageIndicatorLayout.WARM,
                    pagination:
                        // ignore: prefer_const_constructors
                        SwiperPagination(
                      margin: EdgeInsets.all(0.1.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.all(20.0.sp),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              translation(context).companies,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                context.pushNamed(AppRouter.companyScreen);
                              },
                              child: Text(
                                translation(context).seeAll,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 90.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildCompanyModel(
                                      listOfCompanyItems[index], context),
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 18.0.w),
                              itemCount: listOfCompanyItems.length),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              translation(context).categories,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            TextButton(
                              onPressed: () {
                                context.pushNamed(AppRouter.categoryScreen);
                              },
                              child: Text(
                                translation(context).seeAll,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        SizedBox(
                          height: 220,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildCategoryModel(
                                      listOfCategoryItems[index], context),
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 18.0.w),
                              itemCount: listOfCompanyItems.length),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildImagesSwiperModel(ImagesSwiperModel Model) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image(
            image: AssetImage('${Model.swiperImage}'),
            fit: BoxFit.cover,
            width: 270.w,
            height: 130.h,
          ),
        ),
      ],
    );

Widget buildCompanyModel(CompanyModel model, BuildContext context) => Row(
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
                  '${model.companyIcon}',
                  fit: BoxFit.fill,
                  width: 70.w,
                  height: 50.h,
                ),
              )),
        ),
      ],
    );

Widget buildCategoryModel(CategoryModel model, BuildContext context) => Row(
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
                        '${model.categoriesImage}',
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
                      '${model.categoriesName}',
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
