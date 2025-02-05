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
  final ScrollController _scrollController = ScrollController();

  // Déplacez la liste des jeux ici pour qu'elle soit réactive
  List<GameItem> gamesList = games;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
    final List<Widget> _pages = [
      HomePage(
        games: gamesList,
        onGameLiked: () => setState(() {}), // Rafraîchit l'interface
      ),
      FavoritesPage(
        games: gamesList,
        onGameLiked: () => setState(() {}),
      ),
      const AboutPage(),
    ];

    return Scaffold(
      appBar: AppBar(
          title: Text(_selectedIndex == 1 ? "Jeux Favoris" : "Liste des Jeux")),
      body: IndexedStack(index: _selectedIndex, children: _pages),
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

/*class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
    final List<Widget> _pages = [
      HomePage(games: games),
      FavoritesPage(games: games),
      const AboutPage(),
    ];

    String titlePage = "";

    switch (_selectedIndex) {
      case 0:
        titlePage = "Liste des Jeux";
        break;
      case 1:
        titlePage = "Jeux Favoris";
        break;
      case 2:
        titlePage = "À propos";
        break;
      default:
        titlePage = "";
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(titlePage),
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
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
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.white),
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
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    child: const Text("Switch"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
            IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Jeux',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'À propos',
          ),
        ],
      ),
    );
  }
}*/

class HomePage extends StatefulWidget {
  final List<GameItem> games;
  final VoidCallback onGameLiked;

  const HomePage({super.key, required this.games, required this.onGameLiked});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final gamesByPlatform = getGamesByPlatform();

    return SingleChildScrollView(
      child: Column(
        children: gamesByPlatform.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPlatformTitle(entry.key),
              Column(
                children:
                    entry.value.map((game) => _buildGameCard(game)).toList(),
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
        return const Color(0xFF003791);
      case "Xbox":
        return const Color(0xFF379137);
      case "Nintendo Switch":
        return const Color(0xFFE60012);
      default:
        return Colors.grey;
    }
  }

  Widget _buildGameCard(GameItem game) {
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
          ).then((_) => setState(() {}));
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
                  setState(() {
                    game.liked = !game.liked;
                  });
                  widget.onGameLiked();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritesPage extends StatefulWidget {
  final List<GameItem> games;
  final VoidCallback onGameLiked;

  const FavoritesPage(
      {super.key, required this.games, required this.onGameLiked});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoriteGames = widget.games.where((game) => game.liked).toList();

    favoriteGames.sort((a, b) => a.title.compareTo(b.title));

    return Center(
      child: favoriteGames.isEmpty
          ? const Text("Aucun jeu favori pour l'instant")
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
                      ).then((_) {
                        setState(() {});
                      });
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Développé par Guillaume FOISSY"),
    );
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
