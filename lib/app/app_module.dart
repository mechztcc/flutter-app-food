import 'package:flutter_foodstore/app/core/guards/AuthGuard.dart';
import 'package:flutter_foodstore/app/modules/home/home_module.dart';
import 'package:flutter_foodstore/app/modules/user/user_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule(), guards: [AuthGuard()]),
    ModuleRoute('/users', module: UserModule()),
  ];
}
