import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';
import 'package:projeto/RegrasDeNegocio/dummy_users.dart';
import 'package:projeto/RegrasDeNegocio/user_tile.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Favoritos'), actions: <Widget>[
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
