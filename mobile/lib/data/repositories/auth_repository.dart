import 'package:dartz/dartz.dart';
import 'package:mobile/constants/api_url.dart';
import 'package:mobile/data/data_sources/local/share_preferences.dart';
import 'package:mobile/data/models/user_model.dart';
import 'package:mobile/data/repositories/user_repository.dart';
import 'package:mobile/data/services/api_service.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<Either<String, dynamic>> login(UserModel userModel) async {
    try {
      final response = await _apiService.request(
        ApiUrls.signInEndpoint,
        method: Method.post,
        data: userModel.toJson(),
      );

      String accessToken = response.data['data'];
      await UserRepository().getUserProfile();
      await SharedPrefer.sharedPrefer.setUserToken(accessToken);

      return Right(response.data);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, dynamic>> register(UserModel userModel) async {
    try {
      final response = await _apiService.request(
        ApiUrls.signUpEndpoint,
        method: Method.post,
        data: userModel.toJson(),
      );

      if (response.statusCode == 201) {
        await login(userModel);
      }

      print("SignUp Successful: ${response.data}");

      return Right(response.data);
    } catch (e) {
      print("Login API Error: $e");

      return Left(e.toString());
    }
  }
}
