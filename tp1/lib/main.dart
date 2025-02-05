import 'package:flutter/material.dart';

import 'data.dart';
import 'gamedetailpage.dart';

Map<String, List<GameItem>> getGamesByPlatform() {
  Map<String, List<GameItem>> categorizedGames = {
    "PlayStation": [],
    "Xbox": [],
    "Nintendo Switch": [],
  };

  for (var game in games) {
    categorizedGames[game.platform]?.add(game);
  }

  for (var entry in categorizedGames.entries) {
    entry.value.sort((a, b) => a.title.compareTo(b.title));
  }

  return categorizedGames;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TP1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  void toggleFavorite(GameItem game) {
    setState(() {
      game.liked = !game.liked;
    });
  }

  void scrollToPlatform(String platform) {
    double offset = 0;
    switch (platform) {
      case "PlayStation":
        offset = 70;
        break;
      case "Xbox":
        offset = 2440;
        break;
      case "Nintendo Switch":
        offset = 5000;
        break;
    }
    _scrollController.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final gamesByPlatform = getGamesByPlatform();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des Jeux"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => scrollToPlatform("PlayStation"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(160, 60),
                      backgroundColor: Color(0xFF003791),
                      foregroundColor: Colors.white,
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.white)),
                  child: const Text("PlayStation"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => scrollToPlatform("Xbox"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(160, 60),
                      backgroundColor: Color(0xFF379137),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 20)),
                  child: const Text("Xbox"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => scrollToPlatform("Nintendo Switch"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(160, 60),
                      backgroundColor: Color(0xFFE60012),
                      foregroundColor: Colors.white,
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.white)),
                  child: const Text("Switch"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: gamesByPlatform.entries.map((entry) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildPlatformTitle(entry.key),
                    Column(
                      children: entry.value
                          .map((game) => _buildGameCard(game, context))
                          .toList(),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlatformTitle(String platform) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: _getPlatformColor(platform),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            _getPlatformIcon(platform),
            width: 30,
            height: 30,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10),
          Text(
            platform,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  String _getPlatformIcon(String platform) {
    switch (platform) {
      case "PlayStation":
        return "assets/images/playstation.png";
      case "Xbox":
        return "assets/images/xbox.png";
      case "Nintendo Switch":
        return "assets/images/switch.png";
      default:
        return "assets/images/default.png";
    }
  }

  Color _getPlatformColor(String platform) {
    switch (platform) {
      case "PlayStation":
        return Color(0xFF003791);
      case "Xbox":
        return Color(0xFF379137);
      case "Nintendo Switch":
        return Color(0xFFE60012);
      default:
        return Colors.grey;
    }
  }

  Widget _buildGameCard(GameItem game, BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameDetailPage(game: game),
            ),
          );
        },
        child: Container(
          height: 150,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: 100,
                  height: double.infinity,
                  child: Image.asset(
                    game.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      game.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      game.shortDescription,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  game.liked ? Icons.favorite : Icons.favorite_border,
                  color: game.liked ? Colors.red : null,
                ),
                onPressed: () {
                  toggleFavorite(game);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  final List<GameItem> games;

  const FavoritesPage({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    final favoriteGames = games.where((game) => game.liked).toList()
      ..sort((a, b) => a.title.compareTo(b.title));

    return Scaffold(
      appBar: AppBar(title: const Text("Favoris")),
      body: favoriteGames.isEmpty
          ? const Center(child: Text("Aucun jeu en favori"))
          : ListView.builder(
              itemCount: favoriteGames.length,
              itemBuilder: (context, index) {
                final game = favoriteGames[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameDetailPage(game: game),
                        ),
                      );
                    },
                    child: Container(
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              height: double.infinity,
                              child: Image.asset(
                                game.image,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  game.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  game.platform,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Paramètres")),
      body: const Center(
        child: Text("Page des paramètres en construction..."),
      ),
    );
  }
}
