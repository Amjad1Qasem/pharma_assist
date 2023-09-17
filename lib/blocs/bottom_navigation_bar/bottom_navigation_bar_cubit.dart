import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(HomeState());

  void homeScreen() {
    emit(HomeState());
  }

  void categoryState() {
    emit(CategoryState());
  }

  void favorateState() {
    emit(FavorateState());
  }

  void profileScreen() {
    emit(ProfileState());
  }
}
