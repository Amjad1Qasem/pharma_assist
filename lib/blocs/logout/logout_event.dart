part of 'logout_bloc.dart';

@immutable
sealed class LogoutEvent {}

final class LogoutStart extends LogoutEvent {}
