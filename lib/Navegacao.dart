import 'package:flutter/material.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({Key? key}) : super(key: key);

  @override
  _NavegacaoState createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      color: Colors.deepOrange[400],
      child: ListView(padding: padding, children: <Widget>[
        const SizedBox(height: 48),
        buildMenuItem(
          text: 'Serviços',
          icon: Icons.camera,
        ),
        buildMenuItem(
          text: 'Favoritos',
          icon: Icons.favorite,
        ),
        buildMenuItem(
          text: 'Prestadores de Serviços',
          icon: Icons.people,
        ),
        buildMenuItem(
          text: 'Chat',
          icon: Icons.chat,
        ),
        Divider(color: Colors.white),
        buildMenuItem(
          text: 'Perfil',
          icon: Icons.people,
        ),
        buildMenuItem(
          text: 'Configurações',
          icon: Icons.settings,
        ),
      ]),
    ));
  }

  Widget buildMenuItem({required String text, required IconData icon}) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }
}
