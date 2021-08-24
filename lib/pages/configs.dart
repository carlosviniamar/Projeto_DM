import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  _ConfiguracoesState createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Configurações'), actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            icon: Icon(
              Icons.house,
              color: Colors.white,
            ))
      ]),
    );
  }
}
