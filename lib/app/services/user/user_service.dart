import 'package:flutter_foodstore/app/repositories/user_repository.dart';

class UserService {
  final UserRepository _userRepository;

  UserService({required userRepository}) : _userRepository = userRepository;

  Future<void> register(String name, String email, String password) async {
    try {
      var response = await _userRepository.register(name, email, password);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
