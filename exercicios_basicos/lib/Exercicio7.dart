import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
            UserAccountsDrawerHeader(accountName: Text('luana'), accountEmail: Text('luana@gmail.com')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
                onTap: () {
                  print('sair');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Menu'),
        ),
      ),
    );
  }
}
