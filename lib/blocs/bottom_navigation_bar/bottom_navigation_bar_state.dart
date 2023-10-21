part of 'bottom_navigation_bar_cubit.dart';

@immutable
sealed class BottomNavigationBarState {
  final int index;

  const BottomNavigationBarState(this.index);
}

final class HomeState extends BottomNavigationBarState {
  const HomeState() : super(0);
}

final class CategoryState extends BottomNavigationBarState {
  const CategoryState() : super(1);
}

final class FavorateState extends BottomNavigationBarState {
  const FavorateState() : super(3);
}

final class ProfileState extends BottomNavigationBarState {
  const ProfileState() : super(2);
}
