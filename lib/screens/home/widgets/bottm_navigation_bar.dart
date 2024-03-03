import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/themes/extentions/colors_theme_extention.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    final colorbottomNavigation =
        Theme.of(context).extension<ColorsThemeExtention>()!;

     final state = context.watch<BottomNavigationBarCubit>().state;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .07,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorbottomNavigation.bottomNavColors,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              BottomNavigationBarShadowItem(
                  opacity: state is! HomeState ? 0 : 1),
              GestureDetector(
                onTap: context.read<BottomNavigationBarCubit>().homeScreen,
                child: Image.asset(
                  AppImages.homeIcon,
                  width: 30.w,
                  height: 30.h,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              BottomNavigationBarShadowItem(
                  opacity: state is! CategoryState ? 0 : 1),
              GestureDetector(
                onTap: context.read<BottomNavigationBarCubit>().categoryScreen,
                child: Image.asset(
                  AppImages.categoryIcon,
                  width: 30.w,
                  height: 30.h,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              BottomNavigationBarShadowItem(
                  opacity: state is! ProfileState ? 0 : 1),
              GestureDetector(
                onTap: context.read<BottomNavigationBarCubit>().profileScreen,
                child: Image.asset(
                  AppImages.profileIcon,
                  width: 30.w,
                  height: 30.h,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              BottomNavigationBarShadowItem(
                  opacity: state is! FavorateState ? 0 : 1),
              GestureDetector(
                onTap: context.read<BottomNavigationBarCubit>().favorateScreen,
                child: Image.asset(
                  AppImages.favoriteIcon,
                  width: 30.w,
                  height: 30.h,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarShadowItem extends StatelessWidget {
  const BottomNavigationBarShadowItem({
    super.key,
    required this.opacity,
  });

  final double opacity;

  @override
  Widget build(BuildContext context) {
    final bottomNavigationShadow =
        Theme.of(context).extension<ColorsThemeExtention>()!;
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 500),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Container(
          width: 73.w,
          height: 3.h,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        Image.asset(
          bottomNavigationShadow.imagePathShadowBottomNav,
          width: 70.w,
        ),
      ]),
    );
  }
}
