import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Crie uma nova conta',
              style: TextStyle(fontSize: 20),
            ),
            // Adicione campos de entrada para o nome, email e senha
            // Adicione um botão de registro
            // Adicione um botão para navegar de volta para a tela de login
          ],
        ),
      ),
    );
  }
}
