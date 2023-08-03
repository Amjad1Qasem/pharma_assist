import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';

part  'no_internet_stste.dart';


class NoInternetCubit extends Cubit <NoInternetState> {
    NoInternetCubit() : super(NoInternetInitial()){
      InternetConnectionChecker().onStatusChange.listen((event) { 
        if(event == InternetConnectionStatus.disconnected){
          emit(NoInternetFailed());
        }
        else{
          emit(NoInternetFailed());
        }
      });
    }
    }