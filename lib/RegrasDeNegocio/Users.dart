import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;
  final String time;
  final String funcao;
  final String imageUrl;
  final String msg;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.funcao,
    required this.imageUrl,
    required this.time,
    required this.msg,
  });
}
