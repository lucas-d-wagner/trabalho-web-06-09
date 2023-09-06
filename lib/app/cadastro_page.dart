import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro( {super.key} );

  @override
  State<Cadastro> createState() => _CadastroState();
}


class _CadastroState extends State<Cadastro> {

  final _nome = TextEditingController();
  final _email = TextEditingController();
  final _senha = TextEditingController();

  var _dadosCadastro = "";

  void _cadastrar() {
    String? nome = _nome.text ?? "";
    String? email = _email.text ?? "";
    String? senha = _senha.text ?? "";

    setState(() {
      _dadosCadastro = 'Nome: $nome.\nEmail: $email.\nSenha: $senha.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _nome,
              decoration: const InputDecoration(
                labelText: "Nome",
                hintText: "Insira seu nome...",
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                labelText: "E-mail",
                hintText: "Insira seu email...",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: _senha,
              decoration: const InputDecoration(
                labelText: "Senha",
                hintText: "insira sua senha...",
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                _cadastrar();
              },
              child: const Text('CADASTRAR'),
            ),
            Text(
                "$_dadosCadastro"
            ),
          ],
        ),
      ),
    );
  }

}