import 'package:flutter/material.dart';
import 'data.dart';
import 'gamedetailpage.dart';

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
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  void scrollToPlatform(String platform) {
    double offset = 0;
    switch (platform) {
      case "PlayStation":
        offset = 0;
        break;
      case "Xbox":
        offset = 1560;
        break;
      case "Nintendo Switch":
        offset = 3235;
        break;
    }
    _scrollController.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void toggleFavorite(GameItem game) {
    setState(() {
      game.liked = !game.liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomePage(
          games: games,
          onGameLiked: toggleFavorite,
          scrollController: _scrollController),
      FavoritesPage(games: games, onGameLiked: toggleFavorite),
      const AboutPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ["Liste des Jeux", "Jeux Favoris", "À propos"][_selectedIndex],
        ),
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      body: Column(
        children: [
          if (_selectedIndex == 0) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => scrollToPlatform("PlayStation"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 60),
                    backgroundColor: const Color(0xFF003791),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("PlayStation"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => scrollToPlatform("Xbox"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 60),
                    backgroundColor: const Color(0xFF379137),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("Xbox"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => scrollToPlatform("Nintendo Switch"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 60),
                    backgroundColor: const Color(0xFFE60012),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("Switch"),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: _pages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: 'Jeux'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoris'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'À propos'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<GameItem> games;
  final Function(GameItem) onGameLiked;
  final ScrollController scrollController;

  final Map<String, Map<String, dynamic>> categoryProperties = {
    "PlayStation": {
      "color": Color(0xFF003791),
      "image": 'assets/images/playstation.png',
    },
    "Xbox": {
      "color": Color(0xFF379137),
      "image": 'assets/images/xbox.png',
    },
    "Nintendo Switch": {
      "color": Color(0xFFE60012),
      "image": 'assets/images/switch.png',
    },
  };

  HomePage(
      {super.key,
      required this.games,
      required this.onGameLiked,
      required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final gamesByPlatform = getGamesByPlatform();

    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: gamesByPlatform.entries.map((entry) {
          final categoryInfo = categoryProperties[entry.key];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: categoryInfo?['color'],
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      categoryInfo?['image'],
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      entry.key,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
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

  Widget _buildGameCard(GameItem game, BuildContext context) {
    return Card(
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
          height: 100,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  game.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        game.title,
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        game.shortDescription,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  game.liked ? Icons.favorite : Icons.favorite_border,
                  color: game.liked ? Colors.red : null,
                  size: 30,
                ),
                onPressed: () => onGameLiked(game),
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
  final Function(GameItem) onGameLiked;

  const FavoritesPage(
      {super.key, required this.games, required this.onGameLiked});

  @override
  Widget build(BuildContext context) {
    final favoriteGames = games.where((game) => game.liked).toList();

    favoriteGames.sort((a, b) => a.title.compareTo(b.title));

    return favoriteGames.isEmpty
        ? const Center(child: Text("Aucun jeu favori pour l'instant"))
        : ListView.builder(
            itemCount: favoriteGames.length,
            itemBuilder: (context, index) {
              final game = favoriteGames[index];
              return Card(
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
                    height: 100,
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            game.image,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  game.title,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                Text(
                                  game.shortDescription,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            game.liked ? Icons.favorite : Icons.favorite_border,
                            color: game.liked ? Colors.red : null,
                            size: 30,
                          ),
                          onPressed: () => onGameLiked(game),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Développé par Guillaume FOISSY"));
  }
}

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
