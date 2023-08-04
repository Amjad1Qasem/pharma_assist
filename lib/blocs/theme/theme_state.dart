part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ThemeFetched extends ThemeState {
  final ThemeMode themeMode;

  ThemeFetched(this.themeMode);
}
