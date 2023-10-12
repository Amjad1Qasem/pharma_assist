import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/blocs/localization/localization_cubit.dart';
import 'package:pharma_assist/blocs/theme/theme_cubit.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:share_plus/share_plus.dart';

class DrawerHome extends HookWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    late ThemeState themeCubitState =
        BlocProvider.of<ThemeCubit>(context).state;
    final isDarkSelected = useState(themeCubitState is ThemeFetched &&
        (themeCubitState).themeMode == ThemeMode.dark);
    final languageSelected = useState(false);

    // late LocalizationState localizationCubitState =
    //     BlocProvider.of<LocalizationCubit>(context).state;
    // final language = useState(localizationCubitState is LocalizationFetched &&
    //         (localizationCubitState).locale.languageCode == 'en'
    //     ? 'light'
    //     : 'dark');

    // final box = context.findRenderObject() as RenderBox?;
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          const Background(),
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
                        image: const AssetImage(
                          AppImages.iconLogin,
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
                ListTileItem(
                    onTap: () {},
                    text: translation(context).language,
                    icon: Icons.language,
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
                              left: languageSelected.value ? 45.0.sp : 0.0.sp,
                              right: languageSelected.value ? 0.0.sp : 45.0.sp,
                              duration: const Duration(
                                microseconds: 1000,
                              ),
                              child: InkWell(
                                onTap: () {
                                  if (languageSelected.value) {
                                    (BlocProvider.of<LocalizationCubit>(context)
                                                .state as LocalizationFetched)
                                            .locale
                                            .languageCode ==
                                        'en';
                                    BlocProvider.of<LocalizationCubit>(context)
                                        .english();
                                  } else {
                                    (BlocProvider.of<LocalizationCubit>(context)
                                                .state as LocalizationFetched)
                                            .locale
                                            .languageCode ==
                                        'ar';
                                    BlocProvider.of<LocalizationCubit>(context)
                                        .arabic();
                                  }
                                  languageSelected.value =
                                      !languageSelected.value;
                                },
                                child: AnimatedSwitcher(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    transitionBuilder: (Widget child,
                                        Animation<double> animation) {
                                      return ScaleTransition(
                                        // ignore: sort_child_properties_last
                                        child: child,
                                        scale: animation,
                                      );
                                    },
                                    child: languageSelected.value
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
                                                  color: const Color.fromARGB(
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
                                                  color: const Color.fromARGB(
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
                line(),
                ListTileItem(
                    onTap: () {},
                    text: translation(context).theme,
                    icon: Icons.dark_mode,
                    trailing: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: const Duration(microseconds: 1000),
                      height: 38.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.r),
                          color: isDarkSelected.value
                              ? const Color(0xff1f4d59)
                              : const Color(0xff64c1db)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedPositioned(
                              curve: Curves.easeIn,
                              left: isDarkSelected.value ? 45.0.sp : 0.0.sp,
                              right: isDarkSelected.value ? 0.0.sp : 45.0.sp,
                              duration: const Duration(
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
                                    duration:
                                        const Duration(milliseconds: 1000),
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
                                            padding: EdgeInsets.all(5.sp),
                                            child: Container(
                                              height: 30.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
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
                line(),
                ListTileItem(
                  text: translation(context).favorites,
                  onTap: () => context.goNamed(AppRouter.favorateScreen),
                  icon: Icons.favorite,
                ),
                line(),
                ListTileItem(
                  text: translation(context).aboutUs,
                  onTap: () => context.goNamed(AppRouter.aboutUsScreen),
                  icon: Icons.contact_support,
                ),
                line(),
                ListTileItem(
                  text: translation(context).share,
                  onTap: () async {
                    await Share.share(
                      'com.example.pharma_assist',
                      // sharePositionOrigin:
                      // box!.localToGlobal(Offset.zero) & box.size,
                    );
                    debugPrint('Share App');
                  },
                  icon: Icons.share,
                ),
                line(),
                ListTileItem(
                  text: translation(context).logout,
                  onTap: () {
                    context.goNamed(AppRouter.loginScreen);
                  },
                  icon: Icons.logout_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
    this.trailing,
  });
  final Function() onTap;
  final String text;
  final IconData icon;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
      },
      leading: Icon(
        icon,
        size: 30.sp,
        color: Colors.black54,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: trailing,
    );
  }
}

Widget line() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
      child: Container(
        width: double.infinity,
        height: 1.h,
        color: Colors.black,
      ),
    );
