import 'package:flutter/material.dart';
import 'package:recipes_bita/recipe.dart';
import 'package:recipes_bita/recipe_detail.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
// 2
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
// 3
      body: SafeArea(
// 4
        child: ListView.builder(
// 5
          itemCount: Recipe.samples.length,
// 6
          itemBuilder: (BuildContext context, int index) {
// 7
            return GestureDetector(
// 8
              onTap: () {
// 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
// 10
// TODO: Replace return with return RecipeDetail()
                      return RecipeDetail(
                        recipe: Recipe.samples[index],
                      );
                    },
                  ),
                );
              },
// 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
// 1
      elevation: 2.0,
// 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
// 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
// 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
// 5
            const SizedBox(
              height: 14.0,
            ),
// 6
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}


// page 56