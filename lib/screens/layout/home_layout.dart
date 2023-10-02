import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/caterories/category_screen.dart';
import 'package:pharma_assist/screens/favorite/favorite_screen.dart';
import 'package:pharma_assist/screens/home/drawer_home.dart';
import 'package:pharma_assist/screens/home/home_screen.dart';
import 'package:pharma_assist/screens/profile/profile_screen.dart';
import 'package:pharma_assist/themes/app_colors.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class HomeLayout extends HookWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final searchcontroller = useTextEditingController();
    final size = MediaQuery.of(context).size;
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
                              onEditingComplete: () {
                                context.pushNamed(AppRouter.searchScreen);
                              },
                              hintText: 'Search drug,company etc.',
                              prefix: Icons.search_rounded,
                              controller: searchcontroller,
                              radius: 10.r,
                              keyboardType: TextInputType.none,
                              validation: const [],
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
            width: size.width,
            height: size.height * .09,
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [Color(0xff1c4c59), Color(0xff607d8b)],
                //   begin: Alignment.bottomCenter,
                //   end: Alignment.topCenter,
                // ),

                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // GestureDetector(
                //   child: const Text('dsadsa'),
                //   onTap: () => debugPrint('dasjiopdjkpo'),
                // ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    BottomNavigationBarShadowItem(
                        opacity: state is! HomeState ? 0 : 1),
                    GestureDetector(
                      onTap:
                          context.read<BottomNavigationBarCubit>().homeScreen,
                      child: Image.asset(
                        AppImages.homeIcon,
                        width: 30.w,
                        height: 30.h,
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
                      onTap: context
                          .read<BottomNavigationBarCubit>()
                          .categoryScreen,
                      child: Image.asset(
                        AppImages.categoryIcon,
                        width: 30.w,
                        height: 30.h,
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
                      onTap: context
                          .read<BottomNavigationBarCubit>()
                          .profileScreen,
                      child: Image.asset(
                        AppImages.profileIcon,
                        width: 30.w,
                        height: 30.h,
                        color: const Color(0xff333333),
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
                      onTap: context
                          .read<BottomNavigationBarCubit>()
                          .favorateScreen,
                      child: Image.asset(
                        AppImages.favoriteIcon,
                        width: 30.w,
                        height: 30.h,
                      ),
                    )
                  ],
                ),
              ],
            ),
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

class BottomNavigationBarShadowItem extends StatelessWidget {
  const BottomNavigationBarShadowItem({
    super.key,
    required this.opacity,
  });

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 500),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 70.w,
            height: 3.h,
            color: AppColors.primaryGreen,
          ),
          Image.asset(AppImages.bottomShadowLightIcon),
        ],
      ),
    );
  }
}
