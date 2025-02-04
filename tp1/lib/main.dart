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
  int _selectedIndex = 0;

  final List<GameItem> _games = games;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void toggleFavorite(GameItem game) {
    setState(() {
      game.liked = !game.liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(games: _games, onToggleFavorite: toggleFavorite),
          FavoritesPage(games: _games),
          const SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Paramètres',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<GameItem> games;
  final Function(GameItem) onToggleFavorite;

  const HomePage(
      {super.key, required this.games, required this.onToggleFavorite});

  @override
  Widget build(BuildContext context) {
    final gamesByPlatform = getGamesByPlatform();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des Jeux"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      body: ListView(
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
        child: ListTile(
          contentPadding: const EdgeInsets.all(8),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              game.image,
              width: 50,
              height: 50,
            ),
          ),
          title: Text(game.title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(game.shortDescription),
          trailing: IconButton(
            icon: Icon(
              game.liked ? Icons.favorite : Icons.favorite_border,
              color: game.liked ? Colors.red : null,
            ),
            onPressed: () {
              onToggleFavorite(game);
            },
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
    final favoriteGames = games.where((game) => game.liked).toList();

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
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(game.image, width: 50, height: 50),
                      ),
                      title: Text(game.title,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(game.platform),
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
