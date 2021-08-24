import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Provider'), actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.house,
              color: Colors.white,
            ))
      ]),
    );
  }
}
