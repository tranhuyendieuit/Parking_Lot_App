class UserModel {
  final String? username;
  final String? password;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? plateNumber;
  final String? vehicleBrand;
  final String? vehicleModel;

  UserModel({
    this.username,
    this.password,
    this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.plateNumber,
    this.vehicleBrand,
    this.vehicleModel,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'] is String? ? json['email'] : '',
      username: json['user_name'] is String? ? json['user_name'] : '',
      password: json['password'] is String? ? json['password'] : '',
      firstName: json['first_name'] is String? ? json['first_name'] : '',
      lastName: json['last_name'] is String? ? json['last_name'] : '',
      phoneNumber: json['phone_number'] is String? ? json['phone_number'] : '',
      plateNumber: json['plate_number'] is String? ? json['plate_number'] : '',
      vehicleBrand:
          json['vehicle_brand'] is String? ? json['vehicle_brand'] : '',
      vehicleModel:
          json['vehicle_model'] is String? ? json['vehicle_model'] : '',
    );
  }

  UserModel copyWith({
    String? email,
    String? username,
    String? password,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? plateNumber,
    String? vehicleBrand,
    String? vehicleModel,
  }) {
    return UserModel(
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      plateNumber: plateNumber ?? this.plateNumber,
      vehicleBrand: vehicleBrand ?? this.vehicleBrand,
      vehicleModel: vehicleModel ?? this.vehicleModel,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_name': username,
      'password': password,
    };
  }

  Map<String, dynamic> editUserToJson() {
    return {
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'phone_number': phoneNumber,
      'plate_number': plateNumber,
      'vehicle_brand': vehicleBrand,
      'vehicle_model': vehicleModel
    };
  }
}
