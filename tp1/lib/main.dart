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
      title: 'Navigation avec Onglets',
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

  final List<Widget> _pages = [
    const HomePage(),
    const FavoritesPage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final gamesByPlatform = getGamesByPlatform();

    return Scaffold(
      appBar: AppBar(title: const Text("Liste des Jeux")),
      body: ListView(
        children: gamesByPlatform.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: _getPlatformColor(entry.key),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  entry.key,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
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

  Color _getPlatformColor(String platform) {
    switch (platform) {
      case "PlayStation":
        return Colors.blue.shade700;
      case "Xbox":
        return Colors.green.shade700;
      case "Nintendo Switch":
        return Colors.red.shade700;
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
            child: SizedBox(width: 50, height: 50, child: game.image),
          ),
          title: Text(game.title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(game.shortDescription),
          trailing: Icon(
            game.liked ? Icons.favorite : Icons.favorite_border,
            color: game.liked ? Colors.red : null,
          ),
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

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
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: game.image,
                    ),
                  ),
                  title: Text(game.title),
                  subtitle: Text(game.platform),
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
