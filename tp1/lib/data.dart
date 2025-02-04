import 'package:flutter/material.dart';

class GameItem {
  String title;
  String platform;
  String shortDescription;
  Image image;
  bool liked;

  GameItem({
    required this.title,
    required this.platform,
    required this.shortDescription,
    required this.image,
    this.liked = false,
  });
}

// Liste des jeux
final List<GameItem> games = [
  GameItem(
    title: "The Legend of Zelda",
    platform: "Switch",
    shortDescription: "Un jeu d'aventure épique.",
    image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/a/a7/Legend_of_Zelda_cover_%28NES%29.jpg"),
  ),
  GameItem(
    title: "God of War",
    platform: "PlayStation",
    shortDescription: "Kratos part en quête dans la mythologie nordique.",
    image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg"),
  ),
  GameItem(
    title: "Halo Infinite",
    platform: "Xbox",
    shortDescription: "Un FPS légendaire revient en force.",
    image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/e/e9/Halo_Infinite.png"),
  ),
  GameItem(
    title: "Spider-Man 2",
    platform: "PlayStation",
    shortDescription: "L'aventure continue avec Peter Parker et Miles Morales.",
    image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/4/40/Spider-Man_2_PS5_cover.jpg"),
  ),
  GameItem(
    title: "Forza Horizon 5",
    platform: "Xbox",
    shortDescription: "La course en monde ouvert au Mexique.",
    image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/f/fc/Forza_Horizon_5_cover_art.jpg"),
  ),
];
