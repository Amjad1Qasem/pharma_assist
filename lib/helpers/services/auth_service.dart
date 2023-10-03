import 'package:pharma_assist/utilities/api.dart';

abstract class AuthService {
  static Future<String> login(
      {required String email, required String password}) async {
    final response = await api().post(
      'auth/local',
      body: {'email': email, 'password': password},
      onFialed: (statusCode, response) =>
          throw Exception(response['message'] as String),
    );
    return response!['token'] as String;
  }
}
