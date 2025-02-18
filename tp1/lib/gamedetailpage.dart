import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
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
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(game.image, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                game.title,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Plateforme: ${game.platform}",
                    style: const TextStyle(
                        fontSize: 22,
                        //color: Colors.black,
                        fontWeight: FontWeight.bold),
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
              const SizedBox(height: 10),
              Text(
                "Type: ${game.type}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Date de sortie: ${game.price == -1 ? game.date.year.toString() : DateFormat('dd/MM/yyyy').format(game.date)}",
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Prix: ${game.price == -1 ? "Non Disponible" : "${game.price} €"}",
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              game.link.isNotEmpty
                  ? InkWell(
                      onTap: () {
                        _launchURL(game.link);
                      },
                      child: Text(
                        "Lien du jeu",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : SizedBox.shrink(),
              const SizedBox(height: 10),
              Text(
                "PEGI: ${game.pegi}",
                style: TextStyle(
                    fontSize: 20, color: colorPegiByCategory(game.pegi)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                game.shortDescription,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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

  Color colorPegiByCategory(int pegi) {
    if (pegi <= 7) {
      return Color(0xFFA5C400);
    } else if (pegi > 7 && pegi <= 16) {
      return Color(0xFFF5A200);
    }
    return Color(0xFFE2011A);
  }
}
