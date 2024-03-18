import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cards"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 181, 217, 247),
                  child: Icon(Icons.person_3, color: Colors.white),
                ),
                title: Text('Item $index'),
                subtitle: Text('Teste'),
              ),
            );
          },
        ),
      ),
    );
  }
}
