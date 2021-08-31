import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;
  final IconData avaliacao;
  final String funcao;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.avaliacao,
    required this.funcao,
  });
}
