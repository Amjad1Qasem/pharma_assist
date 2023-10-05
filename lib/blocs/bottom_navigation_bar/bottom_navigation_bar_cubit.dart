// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(const HomeState());

  void homeScreen() {
    emit(const HomeState());
  }

  void categoryScreen() {
    emit(const CategoryState());
  }

  void favorateScreen() {
    emit(const FavorateState());
  }

  void profileScreen() {
    emit(const ProfileState());
  }
}
