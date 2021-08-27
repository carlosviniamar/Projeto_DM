import 'package:flutter/material.dart';
import 'package:projeto/login_page.dart';
import 'package:projeto/pages/chat.dart';
import 'package:projeto/pages/configs.dart';
import 'package:projeto/pages/favoritos.dart';
import 'package:projeto/pages/perfil.dart';
import 'package:projeto/pages/prestador_servico.dart';
import 'package:projeto/pages/servicos.dart';
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
          primarySwatch: Colors.teal,
          brightness: Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          //rotas

          '/': (context) => LoginPage(), //chamando a página de Login
          '/home': (context) => HomePage(),
          '/servicos': (context) => Servicos(),
          '/favoritos': (context) => Favoritos(),
          '/prestadores': (context) => Prestador_Servico(),
          '/chat': (context) => Chat(),
          '/perfil': (context) => Perfil(),
          '/config': (context) => Configuracoes(), //chamando a página Home
        });
  }
}
