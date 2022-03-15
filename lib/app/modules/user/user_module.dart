import 'package:flutter_foodstore/app/modules/user/pages/create_account_page.dart';
import 'package:flutter_foodstore/app/modules/user/pages/login_page.dart';
import 'package:flutter_foodstore/app/modules/user/pages/user_page.dart';

import 'package:flutter_foodstore/app/modules/user/user_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => UserPage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
    ChildRoute('/create-account', child: (_, args) => CreateAccountPage()),
  ];
}
