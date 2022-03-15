import 'package:dio/dio.dart';
import 'package:flutter_foodstore/app/core/guards/AuthGuard.dart';
import 'package:flutter_foodstore/app/repositories/user_repository.dart';
import 'package:flutter_foodstore/app/services/user/user_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AuthGuard()),
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton((i) => UserRepository(dio: i())),
    Bind.lazySingleton((i) => UserService(userRepository: i())),
  ];

  @override
  final List<ModularRoute> routes = [];
}
