import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/theme/theme_cubit.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/utilities/translation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DrawerHome extends HookWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    late ThemeState themeCubitState =
        BlocProvider.of<ThemeCubit>(context).state;
    final isDarkSelected = useState(themeCubitState is ThemeFetched &&
        (themeCubitState).themeMode == ThemeMode.dark);
    final toggleValue = useState(false);
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          const BackgroundScreen(),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 40.r,
                    start: 10.r,
                    end: 10.r,
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/icon_App.png',
                        ),
                        width: 80.w,
                        height: 80.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Text(
                          'Jawad Talal Rustoms',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                ListTile(
                    leading: Icon(
                      Icons.language,
                      size: 32.sp,
                      color: Colors.black54,
                    ),
                    title: Text(
                      translation(context).language,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: Duration(microseconds: 1000),
                      height: 38.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.r),
                          color: Color(0xff64c1db)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedPositioned(
                              curve: Curves.easeIn,
                              left: toggleValue.value ? 45.0.sp : 0.0.sp,
                              right: toggleValue.value ? 0.0.sp : 45.0.sp,
                              duration: Duration(
                                microseconds: 1000,
                              ),
                              child: InkWell(
                                onTap: () {
                                  toggleValue.value = !toggleValue.value;
                                },
                                child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 1000),
                                    transitionBuilder: (Widget child,
                                        Animation<double> animation) {
                                      return ScaleTransition(
                                        // ignore: sort_child_properties_last
                                        child: child,
                                        scale: animation,
                                      );
                                    },
                                    child: toggleValue.value
                                        ? Padding(
                                            padding: EdgeInsets.all(5.0.sp),
                                            child: Container(
                                              width: 70.w,
                                              height: 30.h,
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                              child: Center(
                                                child: Text(
                                                  'Ar',
                                                  style: TextStyle(
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.all(5.0.sp),
                                            child: Container(
                                              height: 30.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                              child: Center(
                                                child: Text(
                                                  'En',
                                                  style: TextStyle(
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          )),
                              ))
                        ],
                      ),
                    )),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
                  child: Container(
                    width: double.infinity,
                    height: 0.5.h,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                    leading: Icon(
                      Icons.dark_mode,
                      size: 35.sp,
                      color: Colors.black54,
                    ),
                    title: Text(
                      translation(context).theme,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: Duration(microseconds: 1000),
                      height: 38.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.r),
                          color: isDarkSelected.value
                              ? Color(0xff1f4d59)
                              : Color(0xff64c1db)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedPositioned(
                              curve: Curves.easeIn,
                              left: isDarkSelected.value ? 45.0.sp : 0.0.sp,
                              right: isDarkSelected.value ? 0.0.sp : 45.0.sp,
                              duration: Duration(
                                microseconds: 1000,
                              ),
                              child: InkWell(
                                onTap: () {
                                  if (isDarkSelected.value) {
                                    BlocProvider.of<ThemeCubit>(context)
                                        .light();
                                  } else {
                                    BlocProvider.of<ThemeCubit>(context).dark();
                                  }
                                  isDarkSelected.value = !isDarkSelected.value;
                                },
                                child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 1000),
                                    transitionBuilder: (Widget child,
                                        Animation<double> animation) {
                                      return ScaleTransition(
                                        // ignore: sort_child_properties_last
                                        child: child,
                                        scale: animation,
                                      );
                                    },
                                    child: isDarkSelected.value
                                        ? Padding(
                                            padding: EdgeInsets.all(5.0.sp),
                                            child: Container(
                                              width: 70.w,
                                              height: 30.h,
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.dark_mode_sharp,
                                                  size: 23.sp,
                                                  color: Colors.indigo,
                                                ),
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 30.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                              child: Icon(
                                                Icons.light_mode,
                                                size: 23.sp,
                                                color: Color.fromRGBO(
                                                    255, 202, 40, 1),
                                              ),
                                            ),
                                          )),
                              ))
                        ],
                      ),
                    )),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
                  child: Container(
                    width: double.infinity,
                    height: 0.5.h,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    debugPrint('Favorites');
                  },
                  leading: Icon(
                    Icons.favorite,
                    size: 35.sp,
                    color: Colors.black54,
                  ),
                  title: Text(
                    translation(context).favorites,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
                  child: Container(
                    width: double.infinity,
                    height: 0.5.sp,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    debugPrint('Log Out');
                  },
                  leading: Icon(
                    Icons.logout_rounded,
                    size: 35.sp,
                    color: Colors.black54,
                  ),
                  title: Text(
                    translation(context).logout,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
