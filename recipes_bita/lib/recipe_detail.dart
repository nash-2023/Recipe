import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  @override
  State<RecipeDetail> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
// TODO: Add _sliderVal here
  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.recipe.label),
      ),
// 2
      body: SafeArea(
// 3
        child: Column(
          children: <Widget>[
// 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
// 5
            const SizedBox(
              height: 4,
            ),
// 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
// TODO: Add Expanded
// TODO: Add Slider() here
          ],
        ),
      ),
    );
  }
}
