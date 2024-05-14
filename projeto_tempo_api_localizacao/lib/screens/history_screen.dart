import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de Consultas'),
      ),
      body: Center(
        child: Text('Página para exibir histórico de consultas'),
      ),
    );
  }
}
