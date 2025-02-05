import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'data.dart';

class GameDetailPage extends StatelessWidget {
  final GameItem game;

  const GameDetailPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.title)),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 200,
                  child: Image.asset(game.image, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                game.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Plateforme: ${game.platform}",
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    _getPlatformIcon(game.platform),
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Date de sortie: ${DateFormat('dd/MM/yyyy').format(game.date)}",
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                game.shortDescription,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Retour"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getPlatformIcon(String platform) {
    switch (platform) {
      case "PlayStation":
        return "assets/images/playstation-black.webp";
      case "Xbox":
        return "assets/images/xbox-black.png";
      case "Nintendo Switch":
        return "assets/images/switch-black.png";
      default:
        return "assets/images/default.png";
    }
  }
}
