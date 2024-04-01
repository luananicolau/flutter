import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Faça login',
              style: TextStyle(fontSize: 20),
            ),
            // Adicione campos de entrada para email e senha
            // Adicione um botão de login
            // Adicione um botão para navegar para a tela de registro
          ],
        ),
      ),
    );
  }
}
