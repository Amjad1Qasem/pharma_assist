// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PageController controller = PageController();
  int currentVal = 0;
  late List<Widget> chidren = [
    Padding(
      padding: EdgeInsets.all(10.0.sp),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translation(context).firstName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    width: 170.w,
                    child: Text(
                      'Jawad Talal',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translation(context).lastName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Rustom',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translation(context).email,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    width: 170.w,
                    child: Text(
                      'Jawad.u1@gmail.com',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translation(context).birthDate,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '02/02/2003',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translation(context).mobileNumber,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '+963 987372763',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translation(context).specialty,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Pharmacist',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.0.sp),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Unadol',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Icon(
                Icons.cancel,
                size: 25.sp,
                color: Theme.of(context).colorScheme.tertiary,
              )
            ],
          )
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Stack(
        children: [
          const Background(),
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/shap_profile_sreen.png',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 160.r),
                    child: Center(
                      child: Image.asset(
                        'assets/images/icon_App.png',
                        // color: Theme.of(context).colorScheme.primary,
                        width: 140.w,
                        height: 150.h,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 20.sp, horizontal: 40.sp),
                child: Column(
                  children: [
                    Text(
                      'Jawad Talal Rustom',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.editIcon,
                                width: 25.w,
                                height: 25.h,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.pushNamed(AppRouter.editProfile);
                                },
                                child: Text(translation(context).editProfile,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25.sp,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(translation(context).settings,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
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
                            TextButton(
                              onPressed: () {
                                if (currentVal == 1) {
                                  setState(() {
                                    currentVal = 0;
                                    controller.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  });
                                }
                              },
                              child: Text(
                                translation(context).about,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                if (currentVal == 0) {
                                  setState(() {
                                    controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  });
                                }
                              },
                              child: Text(
                                translation(context).searchHistory,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                        Container(
                            width: double.infinity,
                            height: 0.5.h,
                            color: Theme.of(context).colorScheme.tertiary)
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3.5,
                      child: PageView(
                        allowImplicitScrolling: true,
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        children: chidren,
                        onPageChanged: (val) {
                          setState(() {
                            currentVal = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
