part of 'logout_bloc.dart';

@immutable
sealed class LogoutState {}

final class LogoutInitial extends LogoutState {}

final class LogoutLoading extends LogoutState {}

final class LogoutSuccess extends LogoutState {}
