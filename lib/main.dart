// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'BottomNav.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nuevo Mi App titulo app",
      home: NavBar(),
    );
  }
}
