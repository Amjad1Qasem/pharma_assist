part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class LoginProcess extends LoginEvent {
  final String email;
  final String password;

  LoginProcess(this.email, this.password);
}
