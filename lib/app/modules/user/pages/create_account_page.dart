import 'package:flutter/material.dart';
import 'package:flutter_foodstore/app/core/ui/components/custom_button.dart';
import 'package:flutter_foodstore/app/core/ui/components/login_input.dart';

class CreateAccountPage extends StatefulWidget {
  final String title;
  const CreateAccountPage({Key? key, this.title = 'CreateAccountPage'})
      : super(key: key);
  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar conta'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  child: Image.asset('assets/images/create1.png'),
                ),
                const Text(
                  'Crie sua conta gratuitamente!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const LoginInput(
                  label: 'Nome completo',
                  icon: Icon(Icons.person),
                ),
                const LoginInput(
                  label: 'E-mail',
                  icon: Icon(Icons.email),
                ),
                LoginInput(
                  label: 'Senha',
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                ),
                LoginInput(
                  label: 'Confirmar Senha',
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                ),
                CustomButton(name: 'Criar conta', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
