import 'package:flutter/material.dart';

import 'data.dart';
import 'gamedetailpage.dart';

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
