

import 'package:atividade/app/cadastro_page.dart';
import 'package:atividade/app/calculadora_page.dart';
import 'package:flutter/material.dart';

import 'widget/menu.dart';

class Login extends StatefulWidget {
  const Login( {super.key} );

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {

  final _email = TextEditingController();
  final _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                labelText: "E-Mail",
                hintText: "Informe o seu e-mail...",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: _senha,
              decoration: const InputDecoration(
                labelText: "Senha",
                hintText: "Informe a senha...",
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calculadora()),
                );
              },
              child: const Text('LOGIN'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cadastro()),
                  );
                },
                child: const Text('CADASTRAR')
            ),
          ],
        ),
      ),
    );
  }

}