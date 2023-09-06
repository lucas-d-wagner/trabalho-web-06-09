import 'package:atividade/app/calculadora_page.dart';
import 'package:atividade/app/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sobre_page.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Text('MENU DE NAVEGAÇÂO'),
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sobre()),
              );
            },
          ),
          ListTile(
            title: const Text('Calculadora'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Calculadora()),
              );
            },
          ),
          ListTile(
            title: const Text('sair'),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}