import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/menu.dart';

class Sobre extends StatelessWidget {
  const Sobre( {super.key} );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Seja Bem-Vindo!',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text('Essa aplicação é sobre isso.'),
            Image(image: AssetImage('assets/images/doge_image.png'))
          ],
        ),
      ),
    );
  }
}