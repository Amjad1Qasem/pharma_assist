part of 'localization_cubit.dart';

@immutable
abstract class LocalizationState {}

class LocalizationInitial extends LocalizationState {}

class LocalizationFetched extends LocalizationState {
  final Locale locale;

  LocalizationFetched(this.locale);
}
