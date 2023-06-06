import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type 1'),
        ),
        body: ListView(
          children: [
            ...games
                .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined)))
                .toList()             
          ],
        ));
  }
}
