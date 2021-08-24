import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Seu Perfil'), actions: <Widget>[
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
