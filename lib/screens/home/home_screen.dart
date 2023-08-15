// ignore_for_file: must_be_immutable, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/home/drawer_home.dart';
import 'package:pharma_assist/utilities/translation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var Searchcontroller = TextEditingController();

  late List<ImagesSwiperModel> listOfImageSwiper = [
    ImagesSwiperModel(swiperImage: 'assets/images/image_swiper1.png'),
    ImagesSwiperModel(swiperImage: 'assets/images/image_swiper2.png'),
    ImagesSwiperModel(swiperImage: 'assets/images/image_swiper3.png'),
  ];

  late List<CompanyModel> listOfCompanyItems = [
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
      appBar: AppBar(
        backgroundColor: const Color(0xff00a8b9),
        toolbarHeight: 70.h,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 6.sp),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu_rounded,
                size: 45.sp,
              ),
              color: Colors.white,
            );
          }),
        ),
        title: SizedBox(
          height: 50.h,
          child: Padding(
            padding: EdgeInsetsDirectional.only(end: 5.sp),
            child: TextField(
              controller: Searchcontroller,
              onSubmitted: (value) {
                debugPrint(value);
              },
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  labelStyle: TextStyle(
                      fontFamily: 'Nunito-Light',
                      fontSize: 18.sp,
                      color: const Color(0xff8A8A8E)),
                  labelText: 'Search drug, company etc..',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 35.sp,
                    color: Colors.black45,
                  ),
                  //suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)))),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0.w),
          ),
        ),
      ),
      drawer: const DrawerHome(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 180,
            child: Container(
              alignment: Alignment.topCenter,
              // color: const Color.fromARGB(78, 195, 241, 246),
              child: Swiper(
                containerWidth: 500.w,
                containerHeight: 500.h,
                autoplay: true,
                duration: 200,
                curve: Curves.easeIn,
                itemBuilder: (context, index) =>
                    buildImagesSwiperModel(listOfImageSwiper[index]),
                itemCount: listOfImageSwiper.length,
                itemWidth: 300.w,
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0.sp),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            translation(context).companies,
                            style: TextStyle(
                              color: const Color(0xff333333),
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              context.push(AppRouter.companyScreen);
                            },
                            child: Text(
                              translation(context).see_all,
                              style: TextStyle(
                                color: const Color(0xff00A8B9),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                buildCompanyModel(listOfCompanyItems[index]),
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
                            style: TextStyle(
                              color: const Color(0xff333333),
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.goNamed(AppRouter.categoryScreen);
                            },
                            child: Text(
                              translation(context).see_all,
                              style: TextStyle(
                                color: const Color(0xff00A8B9),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Nunito',
                              ),
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
                                buildCategoryModel(listOfCategoryItems[index]),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 18.0.w),
                            itemCount: listOfCompanyItems.length),
                      ),
                    ],
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

Widget buildCompanyModel(CompanyModel Model) => Row(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('Compani itemes');
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
                  '${Model.companyIcon}',
                  fit: BoxFit.fill,
                  width: 70.w,
                  height: 50.h,
                ),
              )),
        ),
      ],
    );

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
