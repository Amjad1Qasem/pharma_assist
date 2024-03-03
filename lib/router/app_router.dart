import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/blocs/no_internet/no_internet_cubit.dart';
import 'package:pharma_assist/screens/about_us/about_us.dart';
import 'package:pharma_assist/screens/caterories/category_data_screen.dart';
import 'package:pharma_assist/screens/companies/company_data_screen.dart';
import 'package:pharma_assist/screens/forget_password/confirm_password_screen.dart';
import 'package:pharma_assist/screens/forget_password/verification_screen/verification_screen.dart';
import 'package:pharma_assist/screens/widget/details.dart';
import 'package:pharma_assist/screens/favorite/favorite_screen.dart';
import 'package:pharma_assist/screens/forget_password/successful_screen_screen/successful_screen_screen.dart';
import 'package:pharma_assist/screens/home/widgets/drawer_home.dart';
import 'package:pharma_assist/screens/intro/intro_screen.dart';
import 'package:pharma_assist/screens/forget_password/confirm_email_screen/confirm_email_screen.dart';
import 'package:pharma_assist/screens/layout/home_layout.dart';
import 'package:pharma_assist/screens/profile/edit_password_screen.dart';
import 'package:pharma_assist/screens/profile/edit_profile_screen.dart';
import 'package:pharma_assist/screens/profile/profile_screen.dart';
import 'package:pharma_assist/screens/register/register_screen.dart';
import 'package:pharma_assist/screens/caterories/category_screen.dart';
import 'package:pharma_assist/screens/companies/company_screen.dart';
import 'package:pharma_assist/screens/home/home_screen.dart';
import 'package:pharma_assist/screens/login/login_sreen.dart';
import 'package:pharma_assist/screens/on_boarding/on_boarding_screen.dart';
import 'package:pharma_assist/screens/search/search_screen.dart';
import 'package:pharma_assist/screens/splash/splash_screen.dart';

class AppRouter {
  AppRouter({required this.noInternetCubit});

  static const noInternetScreen = '/noInternet';
  static const splashScreen = '/splash';
  static const onBoardingScreen = '/onBoardingScreen';
  static const homeScreen = '/home';
  static const companyScreen = '/companyScreen';
  static const categoryScreen = '/categoryScreen';
  static const loginScreen = '/loginScreen';
  static const registerScreen = '/registerScreen';
  static const introScreen = '/introscreen';
  static const confirmEmail = '/confirmEmail';
  static const confirmPassword = '/confirmPassword';
  static const successfulScreen = '/successfulScreen';
  static const profilescreen = '/profileScreen';
  static const homeLayout = '/homeLayout';
  static const detailsMed = '/detailsMed';
  static const editProfile = '/editProfile';
  static const editPassword = '/editPassword';
  static const categoryData = '/categoryData';
  static const favorateScreen = '/favorateScreen';
  static const searchScreen = '/searchScreen';
  static const companyData = '/companyData';
  static const aboutUsScreen = '/aboutUsScreen';
  static const drawerHome = '/drawerHome';
  static const verificationScreen = '/verificationScreen';

  final NoInternetCubit noInternetCubit;

  static final navigatorKey = GlobalKey<NavigatorState>();

  static Route onGenerateRoute(RouteSettings settings) {
    final Route route;
    switch (settings.name) {
      case AppRouter.splashScreen:
        route = CupertinoPageRoute(builder: (_) => const SplashScreen());
        break;
      case AppRouter.onBoardingScreen:
        route = CupertinoPageRoute(builder: (_) => const OnBoardingScreen());
        break;
      case AppRouter.loginScreen:
        route = MaterialPageRoute(builder: (_) => const LoginScreen());
        break;
      case AppRouter.registerScreen:
        route = MaterialPageRoute(builder: (_) => const RegisterScreen());
        break;
      case AppRouter.confirmEmail:
        final hasBackButton = settings.arguments as bool;
        route = MaterialPageRoute(
            builder: (_) => ConfirmEmailSrceen(
                  hasBackButton: hasBackButton,
                ));
        break;
      case AppRouter.confirmPassword:
        route =
            MaterialPageRoute(builder: (_) => const ConfirmPasswordSrceen());
        break;
      case AppRouter.companyScreen:
        route = CupertinoPageRoute(builder: (_) => CompanyScreen());
        break;
      case AppRouter.categoryScreen:
        route = CupertinoPageRoute(builder: (_) => CategorySreen());
        break;
      case AppRouter.homeScreen:
        route = CupertinoPageRoute(builder: (_) => const HomeScreen());
        break;
      case AppRouter.successfulScreen:
        route = MaterialPageRoute(builder: (_) => const SuccessfulScreen());
        break;
      case AppRouter.profilescreen:
        route = CupertinoPageRoute(builder: (_) => const ProfileScreen());
        break;
      case AppRouter.homeLayout:
        route = MaterialPageRoute(builder: (_) => const HomeLayout());
        break;
      case AppRouter.detailsMed:
        route = CupertinoPageRoute(builder: (_) => const DetailsMed());
        break;
      case AppRouter.editProfile:
        route = CupertinoPageRoute(builder: (_) => const EditProfileScreen());
        break;
      case AppRouter.introScreen:
        route = CupertinoPageRoute(builder: (_) => const IntroScreen());
        break;
      case AppRouter.searchScreen:
        route = CupertinoPageRoute(builder: (_) => const SearchScreen());
        break;
      case AppRouter.aboutUsScreen:
        route = CupertinoPageRoute(builder: (_) => const AboutUsScreen());
        break;
      case AppRouter.favorateScreen:
        route = CupertinoPageRoute(builder: (_) => const FavoriteScreen());
        break;
      case AppRouter.verificationScreen:
        final emailcontroller = settings.arguments as TextEditingController;
        route = MaterialPageRoute(
            builder: (_) => VerificationScreen(
                  emailcontroller: emailcontroller,
                ));
        break;
      case AppRouter.drawerHome:
        route = CupertinoPageRoute(builder: (_) => const DrawerHome());
        break;
      case AppRouter.companyData:
        final companyName = settings.arguments as String;
        route = CupertinoPageRoute(
            builder: (_) => CompanyData(
                  companyName: companyName,
                ));
        break;
      case AppRouter.categoryData:
        final categoryName = settings.arguments as String;
        route = CupertinoPageRoute(
            builder: (_) => CategoryData(
                  categoryName: categoryName,
                ));
        break;
      case AppRouter.editPassword:
        final (firstName, lastName, email, birthDate, mobile, speciality) =
            settings.arguments as (
          String,
          String,
          String,
          String,
          String,
          String
        );
        print(settings.arguments);
        route = CupertinoPageRoute(
            builder: (_) => EditPasswordScreen(
                  firsName: firstName,
                  lastName: lastName,
                  email: email,
                  birthDate: birthDate,
                  mobileNumber: mobile,
                  specialty: speciality,
                ));
        break;
      default:
        route = CupertinoPageRoute(builder: (_) => const SplashScreen());
    }
    return route;
  }

  
  late final GoRouter router = GoRouter(
    initialLocation: detailsMed,
    debugLogDiagnostics: kDebugMode,
    routerNeglect: true,
    // navigatorKey: navigatorKey,
    // observers: [],

    routes: [
      // GoRoute(
      //   path: noInternetScreen,
      //   name: noInternetScreen,
      //   builder: (context, state) => const NoIntenetScreen(),
      // ),
      // GoRoute(
      //   path: splashScreen,
      //   name: splashScreen,
      //   builder: (context, state) => const SplashScreen(),
      // ),
      // GoRoute(
      //   path: onBoardingScreen,
      //   name: onBoardingScreen,
      //   builder: (context, state) => OnBoardingScreen(context: ,),
      // ),
      // GoRoute(
      //   path: homeScreen,
      //   name: homeScreen,
      //   builder: (context, state) => const HomeScreen(),
      // ),
      // GoRoute(
      //   path: companyScreen,
      //   name: companyScreen,
      //   builder: (context, state) => CompanyScreen(),
      // ),
      // GoRoute(
      //     path: categoryScreen,
      //     name: categoryScreen,
      //     builder: (context, state) => CategorySreen()),
      // GoRoute(
      //     path: loginScreen,
      //     name: loginScreen,
      //     builder: (context, state) => const LoginScreen()),
      // GoRoute(
      //   path: registerScreen,
      //   name: registerScreen,
      //   builder: (context, state) => const RegisterScreen(),
      // ),
      // GoRoute(
      //   path: introScreen,
      //   name: introScreen,
      //   builder: (context, state) => const IntroScreen(),
      // ),
      // GoRoute(
      //     path: confirmEmail,
      //     name: confirmEmail,
      //     builder: (context, state) => const ConfirmEmailSrceen()),
      // GoRoute(
      //     path: confirmPassword,
      //     name: confirmPassword,
      //     builder: (context, state) => const ConfirmPasswordSrceen()),
      // GoRoute(
      //     path: successfulScreen,
      //     name: successfulScreen,
      //     builder: (context, state) => const SuccessfulScreen()),
      // GoRoute(
      //     path: profilescreen,
      //     name: profilescreen,
      //     builder: (context, state) => const ProfileScreen()),
      // GoRoute(
      //   path: homeLayout,
      //   name: homeLayout,
      //   builder: (context, state) => const HomeLayout(),
      // ),
      // GoRoute(
      //   path: detailsMed,
      //   name: detailsMed,
      //   builder: (context, state) => const DetailsMed(),
      // ),
    ],

    // redirect: (context, state) {
    //   // if (context.read<NoInternetCubit>().state is NoInternetFailed) {
    //   //   return noInternetScreen;
    //   // }
    //   return state.path;
    // },
    // refreshListenable: _GoRouterRefreshStream(
    //   [
    //     noInternetCubit.stream,
    //   ],
    // ),
  );
}

// ignore: unused_element
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
