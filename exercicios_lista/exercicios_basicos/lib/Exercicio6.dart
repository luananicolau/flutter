import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// ambiente de exibição
    MediaQueryData mediaQueryData = MediaQuery.of(context);

// largura da tela
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;

// tamanho do texto 
    double textSize = (screenWidth + screenHeight) * 0.05;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo MediaQuery'),
        ),
        body: Center(
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.5,
            padding: EdgeInsets.all(16.0),
            color: Color.fromARGB(255, 125, 77, 236),
            child: Text(
              'Texto Responsivo',
              style: TextStyle(fontSize: textSize),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
