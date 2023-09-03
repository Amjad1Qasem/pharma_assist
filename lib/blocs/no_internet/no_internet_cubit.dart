// ignore_for_file: depend_on_referenced_packages, unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:meta/meta.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'no_internet_stste.dart';

class NoInternetCubit extends Cubit<NoInternetState> {
  NoInternetCubit() : super(NoInternetInitial()) {
    if (!kIsWeb) {
      InternetConnectionChecker().onStatusChange.listen((event) {
        if (event == InternetConnectionStatus.disconnected) {
          emit(NoInternetFailed());
        } else {
          emit(NoInternetFailed());
        }
      });
    }
  }
}
