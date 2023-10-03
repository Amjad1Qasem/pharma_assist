part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccessed extends LoginState {}

final class LoginFailed extends LoginState {
  final String errorMessage;

  LoginFailed(this.errorMessage);
}
