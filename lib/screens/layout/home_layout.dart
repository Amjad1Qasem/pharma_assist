import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/caterories/category_screen.dart';
import 'package:pharma_assist/screens/favorite/favorite_screen.dart';
import 'package:pharma_assist/screens/home/widgets/bottm_navigation_bar.dart';
import 'package:pharma_assist/screens/home/widgets/drawer_home.dart';
import 'package:pharma_assist/screens/home/home_screen.dart';
import 'package:pharma_assist/screens/profile/profile_screen.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class HomeLayout extends HookWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBarCubit(),
      child: Builder(builder: (context) {
        final state = context.watch<BottomNavigationBarCubit>().state;
        return DefaultScaffold(
          appBar: state is! HomeState
              ? null
              : AppBar(
                  backgroundColor: Theme.of(context).primaryColor,
                  toolbarHeight: 70.h,
                  leading: Builder(builder: (context) {
                    return InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: Icon(
                        Icons.menu_rounded,
                        size: 45.sp,
                        color: Colors.white,
                      ),
                    );
                  }),
                  title: SizedBox(
                    height: 60.h,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(end: 5.sp),
                      child: InkWell(
                        onTap: () => context.pushNamed(AppRouter.searchScreen),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    translation(context).searchDrugCompany,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0.sp),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        AppImages.filterIcon,
                                        width: 27.w,
                                        height: 27.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
          bottomNavigation: const BottomNavBarItem(),
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
              : const FavoriteScreen(hasBackButton: false);
}
