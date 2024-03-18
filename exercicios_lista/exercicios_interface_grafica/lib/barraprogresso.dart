import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _progressValue = 0.0;

  void _updateProgress() {
    setState(() {
      _progressValue += 0.1; // Atualize o valor do progresso conforme necessário
      if (_progressValue >= 1.0) {
        _progressValue = 0.0; // Reinicie o progresso quando atingir 100%
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Progresso Dinâmica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              value: _progressValue, // Valor atual da barra de progresso
              backgroundColor: Colors.grey, // Cor de fundo da barra de progresso
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Cor da barra de progresso
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateProgress,
              child: Text('Atualizar Progresso'),
            ),
          ],
        ),
      ),
    );
  }
}
