import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pharma_assist/helpers/local_storage/local_storage_helper.dart';
import 'package:pharma_assist/helpers/services/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginProcess>((event, emit) async {
      emit(LoginLoading());
      try {
        final token = await AuthService.login(
            email: event.email, password: event.password);
        await LocalStorageHelper.setToken(token: token);
        emit(LoginSuccessed());
      } on Exception catch (e) {
        emit(LoginFailed(e.toString()));
      }
    });
  }
}
