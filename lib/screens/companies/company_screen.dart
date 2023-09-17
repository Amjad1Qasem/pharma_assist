// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class CompanyScreen extends StatelessWidget {
  CompanyScreen({super.key});

  late List<CompanyModel> listOfCompanyItems = [
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon1.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon2.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon3.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon4.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon5.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon6.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon1.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon2.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon3.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon4.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon5.png',
        companyName: 'company Name'),
    CompanyModel(
        companyIcon: 'assets/images/compani_Icon6.png',
        companyName: 'company Name'),
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
                          bottom: 0.sp, top: 0.sp, start: 3.sp),
                      child: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 24.sp,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    translation(context).companies,
                    style: Theme.of(context).textTheme.labelLarge,
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
                    childAspectRatio: 10 / 16,
                    crossAxisCount: 3),
                itemCount: listOfCompanyItems.length,
                itemBuilder: (context, index) =>
                    buildCategoryModel(listOfCompanyItems[index], context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget buildCategoryModel(CompanyModel model, BuildContext context) => Row(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('Compani itemes');
          },
          child: Column(
            children: [
              Container(
                  width: 110.w,
                  height: 110.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0xffcceef1)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      // ignore: unnecessary_string_interpolations
                      '${model.companyIcon}',
                      fit: BoxFit.fill,
                      width: 40.w,
                      height: 50.h,
                    ),
                  )),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 50.h,
                width: 90.w,
                child: Text(
                  // ignore: unnecessary_string_interpolations
                  '${model.companyName}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
