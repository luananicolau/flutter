import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Recipe {
  final String name;
  final String description;
  final String imageUrl;

  Recipe({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sobremesas'),
        ),
        body: RecipeList(),
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Brownie de Chocolate',
      description: 'Um delicioso brownie de chocolate.',
      imageUrl: 'data:image/jpeg;base64,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',
    ),
    Recipe(
      name: 'Sorvete de Baunilha',
      description: 'Sorvete cremoso de baunilha.',
      imageUrl: 'https://www.mundoboaforma.com.br/wp-content/uploads/2022/07/Sorvete-vegano-de-baunilha.jpg',
    ),
    Recipe(
      name: 'Mousse de Morango',
      description: 'Mousse leve e refrescante de morango.',
      imageUrl: 'https://p2.trrsf.com/image/fget/cf/1200/900/middle/images.terra.com/2023/07/29/1315551139-mousse-de-morango.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: recipes.map((recipe) {
        return Card(
          margin: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                recipe.imageUrl,
                fit: BoxFit.cover,
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      recipe.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      recipe.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}