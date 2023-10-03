import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:pharma_assist/blocs/localization/localization_cubit.dart';
import 'package:pharma_assist/blocs/no_internet/no_internet_cubit.dart';
import 'package:pharma_assist/blocs/theme/theme_cubit.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/themes/app_themes.dart';
import 'package:pharma_assist/translation/app_translations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharma_assist/utilities/api.dart';

void main() {
  registerApi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NoInternetCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => LocalizationCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          final ThemeState themeState = context.watch<ThemeCubit>().state;
          final LocalizationState localizationState =
              context.watch<LocalizationCubit>().state;
          if (themeState is! ThemeFetched ||
              localizationState is! LocalizationFetched) {
            return const SizedBox();
          }
          final appRouter =
              AppRouter(noInternetCubit: context.read<NoInternetCubit>());
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            locale: localizationState.locale,
            themeMode: themeState.themeMode,
            supportedLocales: AppTranslation.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            // routerConfig: appRouter.router,
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}
