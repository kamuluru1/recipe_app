import 'package:flutter/material.dart';
import 'details_screen.dart';

class Recipe {
  final String title;
  final String ingredients;
  final String instructions;

  Recipe({
    required this.title,
    required this.ingredients,
    required this.instructions,
  });
}

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Spaghetti Bolognese',
      ingredients: 'Pasta, ground beef, tomato sauce, onions, garlic, olive oil, herbs',
      instructions:
      '1. Cook pasta.\n2. Sauté onions and garlic in olive oil.\n3. Add ground beef and cook until browned.\n4. Pour in tomato sauce and herbs. Simmer.\n5. Mix pasta with sauce and serve.',
    ),
    Recipe(
      title: 'Chicken Curry',
      ingredients: 'Chicken, curry powder, coconut milk, onions, garlic, ginger, tomatoes',
      instructions:
      '1. Sauté onions, garlic, and ginger.\n2. Add chicken and curry powder, cook until browned.\n3. Stir in tomatoes and coconut milk.\n4. Simmer until chicken is cooked through.\n5. Serve with rice.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
