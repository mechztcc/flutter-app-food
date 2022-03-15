import 'package:dio/dio.dart';

class UserRepository {
  final Dio _dio;
  var _url = 'localhost:3333';

  UserRepository({required dio}) : _dio = dio;

  register(String name, String email, String password) async {
    try {
      await _dio.post(_url, data: {
        'name': name,
        'email': email,
        'password': password,
      });
    } on DioError catch (e) {
      print(e.response?.statusCode);
    }
  }
}
