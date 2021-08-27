import 'package:flutter/material.dart';
import 'package:projeto/login_page.dart';
import 'package:projeto/pages/servicos.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({Key? key}) : super(key: key);

  @override
  _NavegacaoState createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  get onclicked => null;
  @override
  Widget build(BuildContext context) {
    LoginPage loginpage = LoginPage();
    final email = loginpage.email;
    // final icon = IconData;
    return Drawer(
        child: Material(
      color: Colors.teal[900],
      child: ListView(padding: padding, children: <Widget>[
        const SizedBox(height: 48),
        buildMenuItem(
          text: 'Serviços',
          icon: Icons.camera,
          onClicked: () => selectedItem(context, 0),
        ),
        buildMenuItem(
          text: 'Favoritos',
          icon: Icons.favorite,
          onClicked: () => selectedItem(context, 1),
        ),
        buildMenuItem(
          text: 'Prestadores de Serviços',
          icon: Icons.people,
          onClicked: () => selectedItem(context, 2),
        ),
        buildMenuItem(
          text: 'Chat',
          icon: Icons.chat,
          onClicked: () => selectedItem(context, 3),
        ),
        Divider(color: Colors.white),
        buildMenuItem(
          text: 'Perfil',
          icon: Icons.people,
          onClicked: () => selectedItem(context, 4),
        ),
        buildMenuItem(
          text: 'Configurações',
          icon: Icons.settings,
          onClicked: () => selectedItem(context, 5),
        ),
      ]),
    ));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

//Rotas
  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).pushReplacementNamed('/servicos');
        break;
      case 1:
        Navigator.of(context).pushReplacementNamed('/favoritos');
        break;
      case 2:
        Navigator.of(context).pushReplacementNamed('/prestadores');
        break;
      case 3:
        Navigator.of(context).pushReplacementNamed('/chat');
        break;
      case 4:
        Navigator.of(context).pushReplacementNamed('/perfil');
        break;
      case 5:
        Navigator.of(context).pushReplacementNamed('/config');
        break;
    }
  }
}
