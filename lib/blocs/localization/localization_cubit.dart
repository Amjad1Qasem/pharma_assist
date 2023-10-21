// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pharma_assist/helpers/local_storage/local_storage_helper.dart';
import 'package:pharma_assist/translation/app_translations.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial()) {
    init();
  }

  void init() async {
    final Locale locale = await LocalStorageHelper.getLocale();
    emit(LocalizationFetched(locale));
  }

  void english() async {
    const Locale englishLocale = AppTranslation.english;
    await LocalStorageHelper.setLocal(englishLocale);
    emit(LocalizationFetched(englishLocale));
  }

  void arabic() async {
    const Locale arabicLocale = AppTranslation.arabic;
    await LocalStorageHelper.setLocal(arabicLocale);
    emit(LocalizationFetched(arabicLocale));
  }
}
