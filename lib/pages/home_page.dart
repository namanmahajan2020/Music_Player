import 'package:flutter/material.dart';
import 'package:music_player/components/my_darwer.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("P L A Y L I S T"),),
      drawer:MyDarwer(),
    );
  }
}