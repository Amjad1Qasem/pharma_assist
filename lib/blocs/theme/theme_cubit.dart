import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helpers/local_storage/local_storage_helper.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()) {
    init();
  }

  void init() async {
    final ThemeMode themeMode = await LocalStorageHelper.getTheme();
    emit(ThemeFetched(themeMode));
  }

  void light() async {
    const ThemeMode lightThemeMode = ThemeMode.light;
    await LocalStorageHelper.setTheme(lightThemeMode);
    emit(ThemeFetched(lightThemeMode));
  }

  void dark() async {
    const ThemeMode darkThemeMode = ThemeMode.dark;
    await LocalStorageHelper.setTheme(darkThemeMode);
    emit(ThemeFetched(darkThemeMode));
  }
}
