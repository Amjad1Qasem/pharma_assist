import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/theme/theme_cubit.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  late ThemeState themeCubitState = BlocProvider.of<ThemeCubit>(context).state;
  late bool isDarkSelected = themeCubitState is ThemeFetched &&
      (themeCubitState as ThemeFetched).themeMode == ThemeMode.dark;
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
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
                    image: const AssetImage('assets/images/icon_App.png'),
                    width: 80.w,
                    height: 80.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Text(
                      'Jawad Talal Rustoms ',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Nunito',
                      ),
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
                  size: 35.sp,
                  color: Colors.black54,
                ),
                title: Text(
                  'Language',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 1000),
                  height: 38.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.r),
                      color: const Color(0xff64c1db)),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedPositioned(
                          curve: Curves.easeIn,
                          left: toggleValue ? 45.0.sp : 0.0.sp,
                          right: toggleValue ? 0.0.sp : 45.0.sp,
                          duration: const Duration(
                            microseconds: 1000,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                toggleValue = !toggleValue;
                              });
                            },
                            child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 1000),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  return ScaleTransition(
                                    // ignore: sort_child_properties_last
                                    child: child,
                                    scale: animation,
                                  );
                                },
                                child: toggleValue
                                    ? Padding(
                                        padding: EdgeInsets.all(5.0.sp),
                                        child: Container(
                                          width: 70.w,
                                          height: 30.h,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          child: Center(
                                            child: Text(
                                              'Ar',
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w700),
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
                                                  BorderRadius.circular(12.r),
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          child: Center(
                                            child: Text(
                                              'En',
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      )),
                          ))
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
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
                  'Theme',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing:
                 AnimatedContainer(
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 1000),
                  height: 38.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.r),
                      color: isDarkSelected
                          ? const Color(0xff1f4d59)
                          : const Color(0xff64c1db)),
                  child:
                   Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedPositioned(
                          curve: Curves.easeIn,
                          left: isDarkSelected ? 45.0.sp : 0.0.sp,
                          right: isDarkSelected ? 0.0.sp : 45.0.sp,
                          duration: const Duration(
                            microseconds: 1000,
                          ),
                          child: InkWell(
                            onTap: () {
                              if (isDarkSelected) {
                                BlocProvider.of<ThemeCubit>(context).light();
                              } else {
                                BlocProvider.of<ThemeCubit>(context).dark();
                              }
                              setState(() {
                                isDarkSelected = !isDarkSelected;
                              });
                            },
                            child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 1000),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  return ScaleTransition(
                                    // ignore: sort_child_properties_last
                                    child: child,
                                    scale: animation,
                                  );
                                },
                                child: isDarkSelected
                                    ? Padding(
                                        padding: EdgeInsets.all(5.0.sp),
                                        child: Container(
                                          width: 70.w,
                                          height: 30.h,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: const Color.fromARGB(
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
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 30.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          child: Icon(
                                            Icons.light_mode,
                                            size: 23.sp,
                                            color: const Color.fromRGBO(
                                                255, 202, 40, 1),
                                          ),
                                        ),
                                      )),
                          ))
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
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
                'Favorites ',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
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
                'Log Out',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
