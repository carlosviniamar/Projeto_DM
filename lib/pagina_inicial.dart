import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';
import 'package:projeto/RegrasDeNegocio/pesquisa.dart';
import 'package:projeto/RegrasDeNegocio/services.dart';
import 'package:projeto/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Services servicos = new Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Provider'), actions: <Widget>[
        //Botão Home na Appbar
      ]),
      body: Column(
        children: <Widget>[
          Container(
            child: const Text('Encontre seu Profissional',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            margin: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
          ),
          Container(
              child: const Text(
                  'Escolha a melhor categoria para a solução de seu problema',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              margin: EdgeInsets.only(
                top: 0,
                left: 10,
              )),
          Container(
            //barra de Pesquisa
            child: CupertinoSearchTextField(
                placeholder: 'Procure por serviços ou profissionais',
                onChanged: (value) async {
                  {
                    Navigator.of(context).pushReplacementNamed('/search');
                  }
                }),
            margin: EdgeInsets.all(10),
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.home_repair_service_sharp,
                            color: Colors.teal[900],
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/servicos');
                          },
                          iconSize: 80,
                        ),
                        Text('Serviços')
                      ],
                    )
                  ],
                  //children
                ),
                padding: EdgeInsets.only(left: 50, top: 20),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite_outline,
                              color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/favoritos');
                          },
                          iconSize: 80,
                        ),
                        Text('Favoritos')
                      ],
                    )
                  ],
                  //children
                ),
                padding: EdgeInsets.only(left: 100, top: 20),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.design_services_outlined,
                              color: Colors.teal[900]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/prestadores');
                          },
                          iconSize: 80,
                        ),
                        Text('Prestadores')
                      ],
                    )
                  ],
                  //children
                ),
                padding: EdgeInsets.only(left: 50, top: 20),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.chat_outlined,
                              color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/chat');
                          },
                          iconSize: 80,
                        ),
                        Text('Chat')
                      ],
                    )
                  ],
                  //children
                ),
                padding: EdgeInsets.only(left: 100, top: 20),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.people_outline,
                              color: Colors.teal[900]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/perfil');
                          },
                          iconSize: 80,
                        ),
                        Text('Seu Perfil')
                      ],
                    )
                  ],
                  //children
                ),
                padding: EdgeInsets.only(left: 50, top: 20),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.settings_outlined,
                              color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/config');
                          },
                          iconSize: 80,
                        ),
                        Text('Configurações')
                      ],
                    )
                  ],
                  //children
                ),
                padding: EdgeInsets.only(left: 100, top: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
