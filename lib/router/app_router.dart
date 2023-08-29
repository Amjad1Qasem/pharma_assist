import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/blocs/no_internet/no_internet_cubit.dart';
import 'package:pharma_assist/screens/forget_password/confirm_password.dart';
import 'package:pharma_assist/screens/forget_password/successful_screen.dart';
import 'package:pharma_assist/screens/intro/intro_screen.dart';
import 'package:pharma_assist/screens/forget_password/confirm_email.dart';
import 'package:pharma_assist/screens/profile/profile_screen.dart';
import 'package:pharma_assist/screens/register/register_screen.dart';
import 'package:pharma_assist/screens/caterories/category_screen.dart';
import 'package:pharma_assist/screens/companies/company_screen.dart';
import 'package:pharma_assist/screens/error/no_internet_screen.dart';
import 'package:pharma_assist/screens/home/home_screen.dart';
import 'package:pharma_assist/screens/login/login_sreen.dart';
import 'package:pharma_assist/screens/on_boarding/on_boarding_screen.dart';
import 'package:pharma_assist/screens/splash/splash_screen.dart';

class AppRouter {
  AppRouter({required this.noInternetCubit});

  static String get noInternetScreen => '/noInternet';
  static String get splashScreen => '/splash';
  static String get onBoardingScreen => '/onBoardingScreen';
  static String get homeScreen => '/home';
  static String get companyScreen => '/companyScreen';
  static String get categoryScreen => '/categoryScreen';
  static String get loginScreen => '/loginScreen';
  static String get registerScreen => '/registerScreen';
  static String get introScreen => '/introscreen';
  static String get confirmEmail => '/confirmEmail';
  static String get confirmPassword => '/confirmPassword';
  static String get successfulScreen => '/successfulScreen';
  static String get profilescreen => '/profileScreen';

  final NoInternetCubit noInternetCubit;

  late final GoRouter router = GoRouter(
    initialLocation: splashScreen,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: noInternetScreen,
        name: noInternetScreen,
        builder: (context, state) => const NoIntenetScreen(),
      ),
      GoRoute(
        path: splashScreen,
        name: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: onBoardingScreen,
        name: onBoardingScreen,
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        path: homeScreen,
        name: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: companyScreen,
        name: companyScreen,
        builder: (context, state) => CompanyScreen(),
      ),
      GoRoute(
          path: categoryScreen,
          name: categoryScreen,
          builder: (context, state) => CategorySreen()),
      GoRoute(
          path: loginScreen,
          name: loginScreen,
          builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: registerScreen,
        name: registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: introScreen,
        name: introScreen,
        builder: (context, state) => const IntroScreen(),
      ),
      GoRoute(
          path: confirmEmail,
          name: confirmEmail,
          builder: (context, state) => const ConfirmEmailSrceen()),
      GoRoute(
          path: confirmPassword,
          name: confirmPassword,
          builder: (context, state) => const ConfirmPasswordSrceen()),
      GoRoute(
          path: successfulScreen,
          name: successfulScreen,
          builder: (context, state) => const SuccessfulScreen()),
      GoRoute(
          path: profilescreen,
          name: profilescreen,
          builder: (context, state) => const ProfileScreen())
    ],
    redirect: (context, state) {
      // if (context.read<NoInternetCubit>().state is NoInternetFailed) {
      //   return noInternetScreen;
      // }
      return null;
    },
    refreshListenable: _GoRouterRefreshStream(
      [
        noInternetCubit.stream,
      ],
    ),
  );
}

class _GoRouterRefreshStream extends ChangeNotifier {
  _GoRouterRefreshStream(List<Stream> streams) {
    notifyListeners();
    _subscriptions = streams
        .map((e) => e.asBroadcastStream().listen((_) => notifyListeners()))
        .toList();
  }

  late final List<StreamSubscription> _subscriptions;

  @override
  void dispose() {
    for (var element in _subscriptions) {
      element.cancel();
    }
    super.dispose();
  }
}
