import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';
import 'package:projeto/RegrasDeNegocio/chat_tile.dart';
import 'package:projeto/RegrasDeNegocio/dummy_users.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final users = {...DUMMY_USERS};
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: Navegacao(),
        appBar: AppBar(
          title: Text('Chat'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                icon: Icon(
                  Icons.house,
                  color: Colors.white,
                ))
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => ChatTile(users.values.elementAt(i)),
        ),
      );
}
