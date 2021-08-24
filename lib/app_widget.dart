import 'package:flutter/material.dart';
import 'package:projeto/pagina_inicial.dart';

class AppWidget extends StatelessWidget {
  // 1 digitar stl, estático, carregou uma vez permanece imutável
  final String title; //2  adicionar titulo

  const AppWidget({Key? key, this.title: ''})
      : super(key: key); // 2 adicionar titulo

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          //rotas

          '/': (context) => HomePage(), //chamando a página de Login
          '/home': (context) => HomePage(), //chamando a página Home
        });
  }
}
