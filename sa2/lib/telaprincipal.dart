import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo à sua página principal!',
              style: TextStyle(fontSize: 20),
            ),
            // Adicione as configurações personalizadas aqui
          ],
        ),
      ),
    );
  }
}
