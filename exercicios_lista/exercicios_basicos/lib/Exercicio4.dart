import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Container(color: Color.fromARGB(255, 196, 45, 150), child: Center(child: Text('Tela 1'))),
    Container(color: Color.fromARGB(255, 98, 25, 112), child: Center(child: Text('Tela 2'))),
    Container(color: Color.fromARGB(255, 47, 36, 92), child: Center(child: Text('Tela 3'))),
    Container(color: Color.fromARGB(255, 36, 70, 92), child: Center(child: Text('Tela 4'))), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Navegação'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      backgroundColor: Colors.white, // cor de fundo
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Tela 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Tela 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tela 3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work_history),
              label: 'Tela 4',
            ),
          ],
        ),
      ),
    );
  }
}
