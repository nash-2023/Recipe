import 'package:flutter/material.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
// 3
      body: SafeArea(
// TODO: Replace child: Container()
// 4
        child: Container(),
      ),
    );
  }
// TODO: Add buildRecipeCard() here
}

// page 56