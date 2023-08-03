import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_assist/blocs/no_internet/no_internet_cubit.dart';
import 'package:pharma_assist/screens/error/no_internet_screen.dart';
import 'package:pharma_assist/screens/splash/splash_screen.dart';

class AppRouter {
  AppRouter({required this.noInternetCubit});

  static String get splashScreen => '/splash';

  static String get noInternetScreen => '/noInternet';

  final NoInternetCubit noInternetCubit;

  late final GoRouter router = GoRouter(
    initialLocation: splashScreen,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: noInternetScreen,
        builder: (context, state) => const NoIntenetScreen(),
      ),
    ],
    redirect: (context, state) {
      if (context.read<NoInternetCubit>().state is NoInternetFailed) {
        return noInternetScreen;
      }
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
