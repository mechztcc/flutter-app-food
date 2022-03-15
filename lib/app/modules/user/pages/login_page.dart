import 'package:flutter/material.dart';
import 'package:flutter_foodstore/app/core/ui/components/custom_button.dart';
import 'package:flutter_foodstore/app/core/ui/components/login_input.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          child: Column(
            children: [
              Image.asset('assets/images/welcome3.png'),
              const LoginInput(
                label: 'Email',
              ),
              LoginInput(
                label: 'Senha',
                icon: Icon(Icons.lock),
                suffix: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {},
                ),
              ),
              CustomButton(
                name: 'Entrar',
                onPressed: () {},
              ),
              TextButton(
                onPressed: () {
                  Modular.to.pushNamed('./create-account');
                },
                child: const Text(
                  'Criar conta',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
