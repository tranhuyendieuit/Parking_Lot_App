import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/presentation/screens/auth/login/bloc/login_event.dart';
import 'package:mobile/presentation/screens/auth/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginInitialEvent>(_onLoginInitialEvent);
    on<LoginChangeEmailPasswordEvent>(_onLoginChangeEmailPasswordEvent);
    on<LoginWithEmailVisibleEvent>(_onLoginWithEmailVisibleEvent);
    // on<LoginWithGoogleEvent>(_onLoginWithGoogleEvent);
    // on<LoginWithEmailPasswordEvent>(_onLoginWithEmailPasswordEvent);
  }

  void _onLoginInitialEvent(
      LoginInitialEvent event, Emitter<LoginState> emit) {}

  void _onLoginWithEmailVisibleEvent(
      LoginWithEmailVisibleEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(isVisable: !state.isVisable));
  }

  void _onLoginChangeEmailPasswordEvent(
      LoginChangeEmailPasswordEvent event, Emitter emit) async {
    final isShowEmailMessage =
        state.email != event.email ? false : state.isShowEmailMessage;
    final isShowPasswordMessage =
        state.password != event.password ? false : state.isShowPasswordMessage;

    emit(
      state.copyWith(
        email: event.email,
        password: event.password,
        isEnabled: event.email.isNotEmpty && event.password.isNotEmpty,
        isShowEmailMessage: isShowEmailMessage,
        isShowPasswordMessage: isShowPasswordMessage,
      ),
    );
  }

  // void _onLoginWithGoogleEvent(LoginWithGoogleEvent event, Emitter emit) async {
  //   emit(state.copyWith(
  //     status: LoginStatus.processing
  //   ));
  //   final user = await AuthRepository().googleLogin();
  //   user.fold((l) {
  //     emit(state.copyWith(
  //       status: LoginStatus.failure,
  //       errorMessage: l,
  //     ));
  //   }, (r) {
  //     emit(state.copyWith(
  //       status: LoginStatus.success,
  //       googleAccount: user.toString(),
  //     ));
  //   });
  // }

  // Future<void> _onLoginWithEmailPasswordEvent(
  //     LoginWithEmailPasswordEvent event, Emitter<LoginState> emit) async {
  //   emit(state.copyWith(status: LoginStatus.processing));
  //   final UserModel userModel = UserModel(
  //     email: state.email,
  //     password: state.password,
  //   );
  //   final result =
  //       await authenticationRepository.loginWithEmailPassword(userModel);
  //   result.fold((l) {
  //     emit(
  //       state.copyWith(
  //         status: LoginStatus.failure,
  //         isShowPasswordMessage: true,
  //         messageInputPassword: l,
  //       ),
  //     );
  //   }, (r) {
  //     emit(state.copyWith(status: LoginStatus.success));
  //   });
  // }
}
