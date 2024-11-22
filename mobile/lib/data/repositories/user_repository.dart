import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../constants/api_url.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';

class UserRepository {
  final ApiService _apiService = ApiService();

  Future<Either<String, UserModel>> getUserProfile() async {
    // I have looked at some APIs that require an access token,
    // and each of those APIs will have its own specific parameters,
    // so for those APIs, you should provide the correct parameters for them.
    final params = {
      'authenticated': '',
      'authorities[0].authority': '',
      'credentials': '{}',
      'details': '{}',
      'principal': '{}',
    };

    try {
      final response = await _apiService.request(
        ApiUrls.getUserEndpoint,
        method: Method.get,
        params: params,
      );
      if (response.data != null) {
        final user = UserModel.fromJson(response.data['data']);

        print("Get User inf: ${response.data}");

        return Right(user);
      } else {
        return const Left("not found");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Get User inf: $e");
      }

      return Left(e.toString());
    }
  }
}
