import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pharma_assist/helpers/local_storage/local_storage_helper.dart';
import 'package:pharma_assist/helpers/services/auth_service.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<LogoutStart>((event, emit) {
      emit(LogoutLoading());
      AuthService.logout();
      LocalStorageHelper.removeToken();
      emit(LogoutSuccess());
    });
  }
}
