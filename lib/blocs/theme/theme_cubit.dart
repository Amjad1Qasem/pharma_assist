

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helpers/local_storage/local_storage_helper.dart';

part  'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()) {
    init();
  }

  void init() async {
    final ThemeMode themeMode = await LocalStoageHelper.getTheme();
    emit(ThemeFetched(themeMode));
  }

  void light() async {
    const ThemeMode lightThemeMode = ThemeMode.light;
    await LocalStoageHelper.setTheme(lightThemeMode);
    emit(ThemeFetched(lightThemeMode));
  }

  void dark() async {
    const ThemeMode darkThemeMode = ThemeMode.dark;
    await LocalStoageHelper.setTheme(darkThemeMode);
    emit(ThemeFetched(darkThemeMode));
  }
}
