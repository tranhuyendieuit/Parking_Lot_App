import 'package:equatable/equatable.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();
}

final class RegisterInitialEvent extends RegisterEvent {
  @override
  List<Object?> get props => [];
}

final class RegisterChangeEmailPasswordEvent extends RegisterEvent {
  final String username;
  final String password;
  final String confirmPassword;
  final String email;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String vehicleBrand;
  final String vehicleModel;
  final String vehiclePlate;

  const RegisterChangeEmailPasswordEvent(
      {required this.username,
      required this.password,
      required this.confirmPassword,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.vehicleBrand,
      required this.vehicleModel,
      required this.vehiclePlate});
  @override
  List<Object?> get props => [username, password];
}

final class RegisterWithUsernameEvent extends RegisterEvent {
  @override
  List<Object?> get props => [];
}
