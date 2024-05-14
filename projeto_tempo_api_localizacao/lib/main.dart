import 'package:flutter/material.dart';
import 'package:projeto_tempo_api_localizacao/screens/screens/home_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Previsão do Tempo',
      theme: ThemeData.light(), // Definindo um tema claro
      home: HomeScreen(),
    );
  }
}
