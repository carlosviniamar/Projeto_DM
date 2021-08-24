import 'package:flutter/material.dart';
import 'package:projeto/Navegacao.dart';

class Prestador_Servico extends StatefulWidget {
  const Prestador_Servico({Key? key}) : super(key: key);

  @override
  _Prestador_ServicoState createState() => _Prestador_ServicoState();
}

class _Prestador_ServicoState extends State<Prestador_Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navegacao(),
      appBar: AppBar(
        title: Text('Prestadores de Serviços'),
      ),
    );
  }
}
