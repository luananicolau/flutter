import 'package:flutter/material.dart';
import 'registro.dart';
import 'login.dart';
import 'telaprincipal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto de Aplicativo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/registro': (context) => RegistroPage(),
        '/telaprincipal': (context) => TelaPrincipalPage(),
      },
    );
  }
}
