import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';
import 'package:projeto/RegrasDeNegocio/dummy_users.dart';
import 'package:projeto/RegrasDeNegocio/user_tile.dart';

class Prestador_Servico extends StatefulWidget {
  const Prestador_Servico({Key? key}) : super(key: key);

  @override
  _Prestador_ServicoState createState() => _Prestador_ServicoState();
}

class _Prestador_ServicoState extends State<Prestador_Servico> {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Prestadores de Serviços'), actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            icon: Icon(
              Icons.house,
              color: Colors.white,
            ))
      ]),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
