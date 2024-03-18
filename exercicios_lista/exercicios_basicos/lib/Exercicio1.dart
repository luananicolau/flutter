import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 1"),
        ),
        body: Column(children: [
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 143, 27, 221),
            child: Text("Container 1"),
          ),
           Container(
            width: 150,
            height: 150,
            color: Color.fromARGB(255, 77, 35, 131),
            child: Text("Container 2"),
          ),
           Container(
            width: 200,
            height: 200,
            color: Color.fromARGB(255, 147, 92, 236),
            child: Text("Container 3"),
          )
        ]),
      ),
    );
  }
}
