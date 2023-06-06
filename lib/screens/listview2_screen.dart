import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(games[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
                onTap:() {
                  final game = games[index];
                  print(game);
                },),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: games.length));
  }
}
