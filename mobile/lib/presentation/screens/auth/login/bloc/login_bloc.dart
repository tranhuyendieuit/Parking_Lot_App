import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/presentation/screens/auth/login/bloc/login_event.dart';
import 'package:mobile/presentation/screens/auth/login/bloc/login_state.dart';
import 'package:mobile/data/services/api_service.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginWithEmailPasswordEvent>(_onLoginWithEmailPasswordEvent);
    on<LoginChangeEmailPasswordEvent>(_onLoginChangeEmailPasswordEvent);
  }

  void _onLoginWithEmailPasswordEvent(
      LoginWithEmailPasswordEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.processing));
    try {
      final response = await ApiService.login(
        username: state.email,
        password: state.password,
      );
      emit(state.copyWith(status: LoginStatus.succes));
      // Handle token if needed
      print('Login successful: ${response['data']}');
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errormessage: e.toString(),
      ));
    }
  }

  void _onLoginChangeEmailPasswordEvent(
      LoginChangeEmailPasswordEvent event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        password: event.password,
        isEnabled: event.email.isNotEmpty && event.password.isNotEmpty,
      ),
    );
  }
}
