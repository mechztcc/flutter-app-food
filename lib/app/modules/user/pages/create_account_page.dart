import 'package:flutter/material.dart';
import 'package:flutter_foodstore/app/core/ui/components/custom_button.dart';
import 'package:flutter_foodstore/app/core/ui/components/login_input.dart';
import 'package:flutter_foodstore/app/modules/user/user_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validatorless/validatorless.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);
  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState
    extends ModularState<CreateAccountPage, UserStore> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();

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
            key: _formKey,
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
                LoginInput(
                  label: 'Nome completo',
                  icon: Icon(Icons.person),
                  controller: nameController,
                  validator: Validatorless.required('Nome é obrigatório!'),
                ),
                LoginInput(
                  label: 'E-mail',
                  icon: Icon(Icons.email),
                  controller: emailController,
                  validator: Validatorless.required('E-mail é obrigatório!'),
                ),
                LoginInput(
                  label: 'Senha',
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                  controller: passwordController,
                  validator: Validatorless.required('Senha é obrigatório!'),
                ),
                LoginInput(
                  label: 'Confirmar Senha',
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                  controller: confirmPassController,
                  validator: Validatorless.required('Senhas divergentes!'),
                ),
                CustomButton(
                  name: 'Criar conta',
                  onPressed: () {
                    final formValid =
                        _formKey.currentState?.validate() ?? false;
                    if (formValid) {
                      controller.register(
                        nameController.text,
                        emailController.text,
                        passwordController.text,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
