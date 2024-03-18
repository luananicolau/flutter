import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatefulWidget {
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conteúdo das Abas'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.music_note), text: 'Playlist de Música'),
            Tab(icon: Icon(Icons.restaurant), text: 'Receitas Culinárias'),
            Tab(icon: Icon(Icons.flight), text: 'Dicas de Viagem'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Conteúdo da aba 1: Playlist de Música
          MusicPlaylistPage(),
          // Conteúdo da aba 2: Receitas Culinárias
          RecipesPage(),
          // Conteúdo da aba 3: Dicas de Viagem
          TravelTipsPage(),
        ],
      ),
    );
  }
}

// conteúdo das outras abas aqui
class MusicPlaylistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Playlist de Música'),
    );
  }
}

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Receitas Culinárias'),
    );
  }
}

class TravelTipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Dicas de Viagem'),
    );
  }
}
