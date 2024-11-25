import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/data/models/user_model.dart';
import 'package:mobile/data/repositories/auth_repository.dart';
import 'package:mobile/presentation/screens/auth/register/bloc/register_event.dart';
import 'package:mobile/presentation/screens/auth/register/bloc/register_state.dart';

class LoginBloc extends Bloc<RegisterEvent, RegisterState> {
  LoginBloc() : super(RegisterState.initial()) {
    on<RegisterWithUsernameEvent>(_onRegisterWithUsernameEvent);
    on<RegisterChangeEmailPasswordEvent>(_onRegisterChangeEmailPasswordEvent);
  }

  void _onRegisterWithUsernameEvent(
      RegisterWithUsernameEvent event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStatus.processing));
    final userModel = UserModel(
      password: state.password,
      username: state.username,
      firstName: state.firstName,
      lastName: state.lastName,
      phoneNumber: state.phoneNumber,
      // vehicleBrand: state.vehicleBrand,
      // vehicleModel: state.vehicleModel,
      // vehiclePlate: state.vehiclePlate,
    );
    print("User send: ${state.username}| pass send: ${state.password}");

    final result = await AuthRepository().login(userModel);

    result.fold(
      (error) {
        emit(state.copyWith(
          status: RegisterStatus.failure,
          errormessage: error,
        ));
        print('Login Error: $error');
      },
      (response) {
        emit(state.copyWith(status: RegisterStatus.success));
      },
    );
  }

  void _onRegisterChangeEmailPasswordEvent(
      RegisterChangeEmailPasswordEvent event, Emitter<RegisterState> emit) {
    emit(
      state.copyWith(
        email: event.username,
        password: event.password,
        username: event.username,
        confirmPassword: event.password,
        firstName: event.firstName,
        lastName: event.lastName,
        phoneNumber: event.phoneNumber,
        vehicleBrand: event.vehicleBrand,
        vehicleModel: event.vehicleModel,
        vehiclePlate: event.vehiclePlate,
        isEnabled: event.username.isNotEmpty &&
            event.password.isNotEmpty &&
            event.firstName.isNotEmpty &&
            event.lastName.isNotEmpty &&
            event.phoneNumber.isNotEmpty &&
            event.vehicleBrand.isNotEmpty &&
            event.vehicleModel.isNotEmpty &&
            event.vehiclePlate.isNotEmpty,
      ),
    );
  }
}
