part of 'bottom_navigation_bar_cubit.dart';

@immutable
sealed class BottomNavigationBarState {
  final int index;

  const BottomNavigationBarState(this.index);
}

final class HomeState extends BottomNavigationBarState {
  HomeState() : super(0);
}

final class CategoryState extends BottomNavigationBarState {
  CategoryState() : super(1);
}

final class FavorateState extends BottomNavigationBarState {
  FavorateState() : super(2);
}

final class ProfileState extends BottomNavigationBarState {
  ProfileState() : super(3);
}
