import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/splash/widgets/animated_background.dart';
import 'package:pharma_assist/themes/extentions/splash_screen_header_theme_extention.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import '../../helpers/local_storage/local_storage_helper.dart';

//TODO:: Make this screen a real splash screen
class SplashScreen extends HookWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    void checkRegistration() async{
      final token = await LocalStorageHelper.getToken();
        context.goNamed(AppRouter.onBoardingScreen);
    }

    final splashScreenHeaderThemeExtention =
        Theme.of(context).extension<SplashScreenHeaderThemeExtention>()!;
    useEffect(() {
      checkRegistration();
    }, []);

    return DefaultScaffold(
      body: Stack(
        children: [
          const AnimatedBackgound(),
          Center(
            child: Image(
              image: AssetImage(
                splashScreenHeaderThemeExtention.imagePath,
              ),
              width: 325.w,
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}
