import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';

class Servicos extends StatefulWidget {
  const Servicos({Key? key}) : super(key: key);

  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(title: Text('Serviços'), actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            icon: Icon(
              Icons.house,
              color: Colors.white,
            ))
      ]),
      body: Column(
        children: <Widget>[
          Container(
            child: const Text('Escolha a categoria',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            margin: EdgeInsets.only(
              top: 20,
            ),
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
                            Icons.house_sharp,
                            color: Colors.teal[900],
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/servicos');
                          },
                          iconSize: 80,
                        ),
                        Text(
                          'Assistência \nTécnica',
                          textAlign: TextAlign.center,
                        )
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
                          icon: Icon(Icons.design_services_outlined,
                              color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/favoritos');
                          },
                          iconSize: 80,
                        ),
                        Text(
                          'Reforma e \nReparos',
                          textAlign: TextAlign.center,
                        )
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
                          icon: Icon(Icons.computer_outlined,
                              color: Colors.teal[900]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/prestadores');
                          },
                          iconSize: 80,
                        ),
                        Text('Tecnologia')
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
                          icon: Icon(Icons.business_outlined,
                              color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/chat');
                          },
                          iconSize: 80,
                        ),
                        Text('Consultoria')
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
                          icon: Icon(Icons.medical_services,
                              color: Colors.teal[900]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/perfil');
                          },
                          iconSize: 80,
                        ),
                        Text('Saúde')
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
                          icon: Icon(Icons.class_, color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/config');
                          },
                          iconSize: 80,
                        ),
                        Text('Aulas')
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
                          icon: Icon(Icons.nature_people_outlined,
                              color: Colors.teal[900]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/perfil');
                          },
                          iconSize: 80,
                        ),
                        Text(
                          'Moda e \nBeleza',
                          textAlign: TextAlign.center,
                        )
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
                          icon: Icon(Icons.house_outlined,
                              color: Colors.teal[600]),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/config');
                          },
                          iconSize: 80,
                        ),
                        Text(
                          'Serviços \nDomésticos',
                          textAlign: TextAlign.center,
                        )
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
