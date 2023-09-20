import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:pharma_assist/screens/caterories/category_screen.dart';
import 'package:pharma_assist/screens/favorite/favorite_screen.dart';
import 'package:pharma_assist/screens/home/drawer_home.dart';
import 'package:pharma_assist/screens/home/home_screen.dart';
import 'package:pharma_assist/screens/profile/profile_screen.dart';
import 'package:pharma_assist/utilities/translation.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var Searchcontroller = TextEditingController();
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.r)))),
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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.onPrimary,
            unselectedItemColor: Theme.of(context).colorScheme.tertiary,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            currentIndex: state.index,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: translation(context).home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.category),
                label: translation(context).categories,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person_2),
                label: translation(context).profile,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: translation(context).favorites,
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                context.read<BottomNavigationBarCubit>().homeScreen();
              } else if (index == 1) {
                context.read<BottomNavigationBarCubit>().categoryState();
              } else if (index == 2) {
                context.read<BottomNavigationBarCubit>().profileScreen();
              } else {
                context.read<BottomNavigationBarCubit>().favorateState();
              }
            },
          ),
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
}
