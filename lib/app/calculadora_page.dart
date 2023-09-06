import 'package:flutter/material.dart';

import 'widget/menu.dart';

class Calculadora extends StatefulWidget {
  const Calculadora( {super.key} );

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  var _visor = "";

  void _adicionarNumero(num) {
    setState(() {
      _visor += num;
    });
  }

  void _adicionarOperacao(operacao) {

    var isJaContemOperacao = _visor.contains('+') ||
        _visor.contains('-') ||
        _visor.contains('*') ||
        _visor.contains('/');

    if(!isJaContemOperacao) {
      setState(() {
        _visor += operacao;
      });
    }
  }

  void _limparVisor() {
    setState(() {
      _visor = "";
    });
  }

  void _fazerCalculo() {

    final pattern = RegExp(r'(\d+)([\/+*-])(\d+)');
    final match = pattern.firstMatch(_visor);
    final value = process(num.parse(match![1]!), match![2]!, num.parse(match![3]!));

    setState(() {
      _visor = value.toString();
    });

  }

  num process(num a, String operator, num b) {
    switch (operator) {
      case '+': return a + b;
      case '-': return a - b;
      case '*': return a * b;
      case '/': return a / b;
    }

    throw ArgumentError(operator);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      appBar: AppBar(
        title: Text('calculadora'),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_visor',
                style: const TextStyle(
                fontSize: 50,
                )
              ),
              Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('7');
                    }, child: Text('7')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('8');
                    }, child: Text('8')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('9');
                    }, child: Text('9')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarOperacao('+');
                    }, child: Text('+')
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('4');
                    }, child: Text('4')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('5');
                    }, child: Text('5')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('6');
                    }, child: Text('6')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarOperacao('-');
                    }, child: Text('-')
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('1');
                    }, child: Text('1')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('2');
                    }, child: Text('2')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('3');
                    }, child: Text('3')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarOperacao('*');
                    }, child: Text('*')
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _fazerCalculo();
                    }, child: Text('=')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarNumero('0');
                    }, child: Text('0')
                ),
                ElevatedButton(
                    onPressed: () {
                      _limparVisor();
                    }, child: Text('C')
                ),
                ElevatedButton(
                    onPressed: () {
                      _adicionarOperacao('/');
                    }, child: Text('/')
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }

}
