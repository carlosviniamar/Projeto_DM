import 'package:flutter/material.dart';
import 'package:projeto/RegrasDeNegocio/Users.dart';

class ChatTile extends StatelessWidget {
  final User user;
  const ChatTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
            maxRadius: 30,
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
            maxRadius: 30,
          );
    return Container(
      child: ListTile(
        leading: avatar,
        minVerticalPadding: 20,
        title: Text(user.name, style: TextStyle(fontSize: 25)),
        subtitle: Container(
          child: Text(
            user.msg,
            style: TextStyle(fontSize: 19),
          ),
          padding: EdgeInsets.only(top: 10),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        trailing: Text(user.time,
            style: TextStyle(
              fontSize: 15,
            )),
      ),
      padding: EdgeInsets.only(top: 20),
    );
  }
}
