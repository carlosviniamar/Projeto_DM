import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/pagina_inicial.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  get email => null;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "carlos";
  String senha = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.amber[50],
          body: SingleChildScrollView(
              child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: (text) => email = text,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    onChanged: (text) => senha = text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (email == 'carlos@gmail.com' && senha == '123') {
                          print('Login Correto');
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          CupertinoAlertDialog(
                            title: Text('Esqueceu sua senha?'),
                            content: Text('Deseja tentar novamente?'),
                            actions: [
                              CupertinoDialogAction(
                                child: Text('Sim'),
                              ),
                              CupertinoDialogAction(
                                child: Text('Não'),
                              )
                            ],
                          );
                        }
                      },
                      child: Text('Login')) //botão
                ],
              ),
            ),
          ))),
    );
  }
}
