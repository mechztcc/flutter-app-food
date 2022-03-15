import 'package:flutter_foodstore/app/services/user/user_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  final UserService _userService;

  _UserStoreBase({required userService}) : _userService = userService;

  Future<void> register(String name, String email, String password) async {
    try {
      await _userService.register(name, email, password);
      Modular.to.pushReplacementNamed('/');
    } catch (e) {
      print(e);
    }
  }
}
