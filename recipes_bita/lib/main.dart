import 'package:flutter/material.dart';
import 'package:recipes_bita/home.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // 1
  @override
  Widget build(BuildContext context) {
// 2
    final ThemeData theme = ThemeData();
// 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
// 4
      title: 'Recipe Calculator',
// 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
// 6
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}
