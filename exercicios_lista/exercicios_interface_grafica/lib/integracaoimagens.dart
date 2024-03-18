import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXERCICIO 8',
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://sp.senai.br/images/Senai.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}