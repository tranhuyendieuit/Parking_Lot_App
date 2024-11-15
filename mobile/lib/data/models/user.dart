import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String password;
  final String vehicle;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.vehicle,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      vehicle: json['vehicle'],
    );
  }
  User copyWith(
      {String? id,
      String? name,
      String? email,
      String? password,
      String? vehicle}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      vehicle: vehicle ?? this.vehicle,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'vehicle': vehicle,
      };

  @override
  List<Object?> get props => [id, name, email, password, vehicle];
}
