import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locais Favoritos'),
      ),
      body: Center(
        child: Text('Página para gerenciar locais favoritos'),
      ),
    );
  }
}
