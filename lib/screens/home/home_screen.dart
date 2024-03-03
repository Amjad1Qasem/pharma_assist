// ignore_for_file: must_be_immutable, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/home/widgets/Images_swiper_model.dart';
import 'package:pharma_assist/screens/home/widgets/category_item_model.dart';
import 'package:pharma_assist/screens/home/widgets/company_item_model.dart';
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
    return SafeArea(
      top: false,
      child: Stack(
        children: [
          const Background(),
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height + 50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                            ImageSwiperModel(model: listOfImageSwiper[index]),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 90.h,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      CompanyModelItem(
                                        model: listOfCompanyItems[index],
                                      ),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              height: 220.h,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      CategoryModelItem(
                                        model: listOfCategoryItems[index],
                                      ),
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
          ),
        ],
      ),
    );
  }
}
