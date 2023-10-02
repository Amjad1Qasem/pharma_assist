import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/caterories/category_screen.dart';
import 'package:pharma_assist/screens/favorite/favorite_screen.dart';
import 'package:pharma_assist/screens/home/drawer_home.dart';
import 'package:pharma_assist/screens/home/home_screen.dart';
import 'package:pharma_assist/screens/profile/profile_screen.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBarCubit(),
      child: Builder(builder: (context) {
        final state = context.watch<BottomNavigationBarCubit>().state;
        return Scaffold(
          appBar: state is! HomeState
              ? null
              : AppBar(
                  backgroundColor: Theme.of(context).primaryColor,
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
                    height: 60.h,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(end: 5.sp),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: [
                          DefaultTextFormField(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                context.pushNamed(AppRouter.searchScreen);
                                FocusScope.of(context).unfocus();
                              },
                              hintText: 'Search drug,company etc.',
                              prefix: Icons.search_rounded,
                              controller: searchcontroller,
                              radius: 10.r,
                              keyboardType: TextInputType.none,
                              validation: const [],
                              scureText: false,
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer),
                          Padding(
                            padding: EdgeInsets.all(10.0.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                    onTap: () {
                                      context.pushNamed(AppRouter.searchScreen);
                                    },
                                    child: Image.asset(
                                      AppImages.filterIcon,
                                      width: 27.w,
                                      height: 27.h,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30.0.r),
                    ),
                  ),
                ),
          drawer: state is! HomeState ? null : const DrawerHome(),
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 14,
            // color: Theme.of(context).colorScheme.onTertiary,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xff1c4c59), Color(0xff607d8b)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    state is! HomeState
                        ? SizedBox(
                            width: 55.w,
                            height: 55.h,
                          )
                        : Column(
                            children: [
                              Container(
                                width: 55.w,
                                height: 3.h,
                                color: Colors.white,
                              ),
                              Container(
                                width: 50.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(0, 217, 217, 217),
                                        Color.fromARGB(179, 217, 217, 217),
                                        Color(0xffD9D9D9),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                          50.r,
                                        ),
                                        bottomRight: Radius.circular(
                                          50.r,
                                        ))),
                              ),
                            ],
                          ),
                    IconButton(
                        onPressed: () {
                          state is! HomeState
                              ? null
                              : context
                                  .read<BottomNavigationBarCubit>()
                                  .homeScreen();
                        },
                        icon: Icon(
                          Icons.home,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 30.sp,
                        ))
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    state is! CategoryState
                        ? const SizedBox()
                        : Column(
                            children: [
                              Container(
                                width: 55.w,
                                height: 3.h,
                                color: Colors.white,
                              ),
                              Container(
                                width: 50.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(0, 217, 217, 217),
                                        Color.fromARGB(179, 217, 217, 217),
                                        Color(0xffD9D9D9),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                          50.r,
                                        ),
                                        bottomRight: Radius.circular(
                                          50.r,
                                        ))),
                              ),
                            ],
                          ),
                    IconButton(
                        onPressed: () {
                          state is! CategoryState
                              ? null
                              : context
                                  .read<BottomNavigationBarCubit>()
                                  .categoryScreen();
                        },
                        icon: Icon(
                          Icons.category_sharp,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 30.sp,
                        ))
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    state is! ProfileState
                        ? const SizedBox()
                        : Column(
                            children: [
                              Container(
                                width: 55.w,
                                height: 3.h,
                                color: Colors.white,
                              ),
                              Container(
                                width: 50.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(0, 217, 217, 217),
                                        Color.fromARGB(179, 217, 217, 217),
                                        Color(0xffD9D9D9),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                          50.r,
                                        ),
                                        bottomRight: Radius.circular(
                                          50.r,
                                        ))),
                              ),
                            ],
                          ),
                    IconButton(
                        onPressed: () {
                          state is! ProfileState
                              ? null
                              : context
                                  .read<BottomNavigationBarCubit>()
                                  .profileScreen();
                        },
                        icon: Icon(
                          Icons.person,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 30.sp,
                        ))
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    state is FavorateState
                        ? const SizedBox()
                        : Column(
                            children: [
                              Container(
                                width: 55.w,
                                height: 3.h,
                                color: Colors.white,
                              ),
                              Container(
                                width: 50.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(0, 217, 217, 217),
                                        Color.fromARGB(179, 217, 217, 217),
                                        Color(0xffD9D9D9),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                          50.r,
                                        ),
                                        bottomRight: Radius.circular(
                                          50.r,
                                        ))),
                              ),
                            ],
                          ),
                    IconButton(
                        onPressed: () {
                          
                    context.goNamed(AppRouter.profilescreen);
                          // state is! FavorateState
                          //     ? null
                          //     : context
                          //         .read<BottomNavigationBarCubit>()
                          //         .favorateScreen();
                        },
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 30.sp,
                        ))
                  ],
                ),
              ],
            ),
          ),

          //     BottomNavigationBar(
          //   selectedItemColor: Colors.blue,
          //   unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          //   backgroundColor: Theme.of(context).colorScheme.primary,
          //   currentIndex: state.index,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: const Icon(Icons.home),
          //       label: translation(context).home,
          //     ),
          //     BottomNavigationBarItem(
          //       icon: const Icon(Icons.category),
          //       label: translation(context).categories,
          //     ),
          //     BottomNavigationBarItem(
          //       icon: const Icon(Icons.person_2),
          //       label: translation(context).profile,
          //     ),
          //     BottomNavigationBarItem(
          //       icon: const Icon(Icons.favorite),
          //       label: translation(context).favorites,
          //     ),
          //   ],
          //   //نستخدمها فقط عند الحدث onTap ..
          //   //read لا ترى التغيرات
          //   // watch  ترى التغيرا
          //   //حالة من حالات ال cuibte هي عندما يكون لدينا setState ونريد استخدامfuterBuilder
          //   onTap: (index) {
          //     if (index == 0) {
          //       context.read<BottomNavigationBarCubit>().homeScreen();
          //     } else if (index == 1) {
          //       context.read<BottomNavigationBarCubit>().categoryState();
          //     } else if (index == 2) {
          //       context.read<BottomNavigationBarCubit>().profileScreen();
          //     } else {
          //       context.read<BottomNavigationBarCubit>().favorateState();
          //     }
          //   },
          // ),

          body: getBody(state),
        );
      }),
    );
  }

  Widget getBody(BottomNavigationBarState state) => state is HomeState
      ? const HomeScreen()
      : state is CategoryState
          ? CategorySreen(hasBackButton: false)
          : state is ProfileState
              ? const ProfileScreen()
              : const FavoriteScreen();
  @override
  void dispose() {
    searchcontroller.clear();
    super.dispose();
  }
}
