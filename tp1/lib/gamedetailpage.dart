import 'package:flutter/material.dart';

import 'data.dart';

class GameDetailPage extends StatelessWidget {
  final GameItem game;

  const GameDetailPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: game.image,
            ),
            const SizedBox(height: 20),
            Text(game.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Plateforme : ${game.platform}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text(game.shortDescription, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Retour"),
            ),
          ],
        ),
      ),
    );
  }
}
