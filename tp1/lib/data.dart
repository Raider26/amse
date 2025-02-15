class GameItem {
  String title;
  String platform;
  String shortDescription;
  String image;
  int pegi;
  bool liked;
  DateTime date;

  GameItem({
    required this.title,
    required this.platform,
    required this.shortDescription,
    required this.image,
    required this.date,
    required this.pegi,
    this.liked = false,
  });
}

final List<GameItem> games = [
  GameItem(
      title: "The Legend of Zelda: Breath of the Wild",
      platform: "Nintendo Switch",
      shortDescription:
          "Une aventure en monde ouvert révolutionnaire où vous explorez Hyrule à votre rythme.",
      image: "assets/images/botw.jpg",
      pegi: 12,
      date: DateTime(2017, 3, 17)),
  GameItem(
      title: "The Last of Us Part II",
      platform: "PlayStation",
      shortDescription:
          "Un récit poignant de vengeance et de survie dans un monde post-apocalyptique.",
      image: "assets/images/tloup2.png",
      pegi: 18,
      date: DateTime(2020, 6, 19)),
  GameItem(
      title: "Ghost of Tsushima",
      platform: "PlayStation",
      shortDescription:
          "Incarnez un samouraï défendant son île contre l'invasion mongole au XIIIe siècle.",
      image: "assets/images/got.jpg",
      pegi: 18,
      date: DateTime(2020, 7, 17)),
  GameItem(
      title: "Demon's Souls",
      platform: "PlayStation",
      shortDescription:
          "Une refonte sublime du jeu culte qui a lancé le genre Souls-like.",
      image: "assets/images/ds.webp",
      pegi: 18,
      date: DateTime(2020, 11, 12)),
  GameItem(
      title: "Ratchet & Clank: Rift Apart",
      platform: "PlayStation",
      shortDescription:
          "Un jeu de plateforme explosif avec des voyages interdimensionnels instantanés.",
      image: "assets/images/rc.png",
      pegi: 7,
      date: DateTime(2021, 6, 11)),
  GameItem(
      title: "Grand Turismo 7",
      platform: "PlayStation",
      shortDescription:
          "La référence ultime de la simulation automobile avec un réalisme époustouflant.",
      image: "assets/images/gt7.png",
      pegi: 3,
      date: DateTime(2022, 3, 4)),
  GameItem(
      title: "Horizon Forbidden West",
      platform: "PlayStation",
      shortDescription:
          "Aloy explore de nouvelles terres et affronte des machines toujours plus redoutables.",
      image: "assets/images/hfw.webp",
      pegi: 16,
      date: DateTime(2022, 2, 18)),
  GameItem(
      title: "Bloodborne",
      platform: "PlayStation",
      shortDescription:
          "Un action-RPG sombre et exigeant dans un univers gothique terrifiant.",
      image: "assets/images/bloodborne.jpg",
      pegi: 16,
      date: DateTime(2015, 3, 24)),
  GameItem(
      title: "Uncharted 4: A Thief's End",
      platform: "PlayStation",
      shortDescription:
          "La dernière aventure de Nathan Drake dans une chasse au trésor effrénée.",
      image: "assets/images/uncharted.jpg",
      pegi: 16,
      date: DateTime(2016, 5, 10)),
  GameItem(
      title: "Returnal",
      platform: "PlayStation",
      shortDescription:
          "Un rogue-like intense où une astronaute revit en boucle sur une planète hostile.",
      image: "assets/images/returnal.jpg",
      pegi: 16,
      date: DateTime(2021, 4, 30)),
  GameItem(
      title: "Final Fantasy VII Remake",
      platform: "PlayStation",
      shortDescription:
          "Une réinterprétation moderne du légendaire RPG avec un nouveau système de combat.",
      image: "assets/images/ff7.jpg",
      pegi: 16,
      date: DateTime(2020, 4, 10)),
  GameItem(
      title: "Shadow of the Colossus",
      platform: "PlayStation",
      shortDescription:
          "Une quête épique où chaque combat est un affrontement contre un colosse géant.",
      image: "assets/images/sotc.png",
      pegi: 12,
      date: DateTime(2018, 2, 6)),
  GameItem(
      title: "Astro Bot",
      platform: "PlayStation",
      shortDescription:
          "Une aventure de plateforme où Astro explore des mondes variés en exploitant la DualSense pour une immersion unique.",
      image: "assets/images/astro.png",
      pegi: 7,
      date: DateTime(2024, 9, 6)),
  GameItem(
      title: "God of War: Ragnarok",
      platform: "PlayStation",
      shortDescription:
          "Kratos et Atreus affrontent les dieux nordiques dans une épopée spectaculaire.",
      image: "assets/images/gow.png",
      pegi: 18,
      date: DateTime(2022, 11, 9)),
  GameItem(
      title: "Halo Infinite",
      platform: "Xbox",
      shortDescription:
          "Le Master Chief revient dans un monde ouvert pour affronter les forces des Parias et sauver l'humanité.",
      image: "assets/images/halo.png",
      pegi: 16,
      date: DateTime(20121, 12, 8)),
  GameItem(
      title: "Marvel's Spider-Man 2",
      platform: "PlayStation",
      shortDescription:
          "Peter Parker et Miles Morales unissent leurs forces contre de nouveaux ennemis.",
      image: "assets/images/spider.jpg",
      pegi: 16,
      date: DateTime(2023, 10, 20)),
  GameItem(
      title: "Forza Horizon 5",
      platform: "Xbox",
      shortDescription:
          "Un jeu de course en monde ouvert qui vous emmène explorer les paysages époustouflants du Mexique.",
      image: "assets/images/forza.jpg",
      pegi: 3,
      date: DateTime(2021, 11, 5)),
  GameItem(
      title: "Gears 5",
      platform: "Xbox",
      shortDescription:
          "Kait Diaz plonge dans son passé pour découvrir les origines des Locustes dans cette suite intense du shooter culte.",
      image: "assets/images/gears.jpg",
      pegi: 18,
      date: DateTime(2019, 9, 6)),
  GameItem(
      title: "Fable",
      platform: "Xbox",
      shortDescription:
          "Le retour tant attendu du RPG fantastique où l'humour et la magie se mêlent à des choix impactants.",
      image: "assets/images/fable.jpg",
      pegi: 16,
      date: DateTime(2017)),
  GameItem(
      title: "Starfield",
      platform: "Xbox",
      shortDescription:
          "Une épopée spatiale ambitieuse par Bethesda où vous explorez l'univers et façonnez votre destin.",
      image: "assets/images/starfield.jpg",
      pegi: 18,
      date: DateTime(2023, 9, 6)),
  GameItem(
      title: "Avowed",
      platform: "Xbox",
      shortDescription:
          "Un RPG en vue subjective par Obsidian situé dans le monde d'Eora (Pillars of Eternity), plein de magie et de combats stratégiques.",
      image: "assets/images/avowed.jpg",
      pegi: 16,
      date: DateTime(2025, 2, 18)),
  GameItem(
      title: "Microsoft Flight Simulator 2024",
      platform: "Xbox",
      shortDescription:
          "L'expérience ultime de pilotage avec une modélisation ultra-réaliste du monde entier.",
      image: "assets/images/mfs.jpg",
      pegi: 3,
      date: DateTime(2024, 11, 19)),
  GameItem(
      title: "State of Decay 3",
      platform: "Xbox",
      shortDescription:
          "Un jeu de survie en monde ouvert où vous devez bâtir une communauté face à une apocalypse zombie.",
      image: "assets/images/sod.jpg",
      pegi: 18,
      date: DateTime(2026)),
  GameItem(
      title: "Hellblade II: Senua's Saga",
      platform: "Xbox",
      shortDescription:
          "Une aventure psychologique sombre et immersive qui explore la mythologie nordique et la folie.",
      image: "assets/images/hell.jpg",
      pegi: 18,
      date: DateTime(2024, 5, 21)),
  GameItem(
      title: "Everwild",
      platform: "Xbox",
      shortDescription:
          "Une nouvelle licence de Rare proposant un monde mystique rempli de créatures fascinantes à protéger et à comprendre.",
      image: "assets/images/everwild.jpg",
      pegi: 3,
      date: DateTime(2025)),
  GameItem(
      title: "Grounded",
      platform: "Xbox",
      shortDescription:
          "Un jeu de survie en coop où vous incarnez des enfants miniaturisés dans un jardin regorgeant d'insectes hostiles.",
      image: "assets/images/grounded.jpeg",
      pegi: 12,
      date: DateTime(2020, 7, 28)),
  GameItem(
      title: "The Outer Worlds 2",
      platform: "Xbox",
      shortDescription:
          "La suite du RPG satirique d'Obsidian, qui promet encore plus d'exploration et de décisions cruciales.",
      image: "assets/images/tow2.jpg",
      pegi: 18,
      date: DateTime(2025)),
  GameItem(
      title: "Sea of Thieves",
      platform: "Xbox",
      shortDescription:
          "Un jeu d'aventure multijoueur où vous vivez la vie de pirate avec exploration, combats et chasse aux trésors.",
      image: "assets/images/sot.webp",
      pegi: 12,
      date: DateTime(2018, 3, 20)),
  GameItem(
      title: "Redfall",
      platform: "Xbox",
      shortDescription:
          "Un FPS coopératif où vous affrontez des vampires dans une ville envahie par des créatures surnaturelles.",
      image: "assets/images/redfall.jpg",
      pegi: 18,
      date: DateTime(2023, 5, 2)),
  GameItem(
      title: "Pentiment",
      platform: "Xbox",
      shortDescription:
          "Une aventure narrative unique en 2D, inspirée des manuscrits médiévaux et portée par une histoire captivante.",
      image: "assets/images/pentiment.webp",
      pegi: 16,
      date: DateTime(2022, 11, 15)),
  GameItem(
      title: "Super Mario Odyssey",
      platform: "Nintendo Switch",
      shortDescription:
          "Un voyage épique avec Mario et Cappy à travers des royaumes variés pour sauver la princesse Peach.",
      image: "assets/images/smo.jpg",
      pegi: 7,
      date: DateTime(2017, 10, 27)),
  GameItem(
      title: "Mario Kart 8 Deluxe",
      platform: "Nintendo Switch",
      shortDescription:
          "Le jeu de course ultime avec des circuits emblématiques, des objets chaotiques et du multijoueur fun.",
      image: "assets/images/mk8.jpg",
      pegi: 3,
      date: DateTime(2017, 4, 27)),
  GameItem(
      title: "Super Smash Bros. Ultimate",
      platform: "Nintendo Switch",
      shortDescription:
          "Le plus grand crossover de l'histoire du jeu vidéo avec des combats intenses et stratégiques.",
      image: "assets/images/ssbu.jpg",
      pegi: 12,
      date: DateTime(2018, 12, 7)),
  GameItem(
      title: "Pokémon Legends: Arceus",
      platform: "Nintendo Switch",
      shortDescription:
          "Une réinvention de la formule Pokémon qui vous plonge dans un monde ouvert à l'ère féodale.",
      image: "assets/images/pokemon.webp",
      pegi: 7,
      date: DateTime(2022, 1, 28)),
  GameItem(
      title: "Splatoon 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu de tir coloré où les Inklings et Octolings s'affrontent dans des batailles de peinture dynamiques.",
      image: "assets/images/splatoon.jpg",
      pegi: 7,
      date: DateTime(2022, 9, 9)),
  GameItem(
      title: "Metroid Dread",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu d'action et d'exploration où Samus Aran affronte des créatures menaçantes sur la planète ZDR.",
      image: "assets/images/metroid.jpg",
      pegi: 12,
      date: DateTime(2021, 10, 8)),
  GameItem(
      title: "Animal Crossing: New Horizons",
      platform: "Nintendo Switch",
      shortDescription:
          "Créez et personnalisez votre île paradisiaque dans ce jeu de simulation de vie relaxant.",
      image: "assets/images/acnh.jpg",
      pegi: 3,
      date: DateTime(2020, 3, 20)),
  GameItem(
      title: "Fire Emblem: Three Houses",
      platform: "Nintendo Switch",
      shortDescription:
          "Un RPG stratégique captivant mêlant combats tactiques et intrigues politiques.",
      image: "assets/images/feth.jpg",
      pegi: 12,
      date: DateTime(2019, 7, 26)),
  GameItem(
      title: "Xenoblade Chronicles 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Un immense RPG en monde ouvert avec une histoire profonde et des combats dynamiques.",
      image: "assets/images/xc3.jpg",
      pegi: 12,
      date: DateTime(2022, 7, 29)),
  GameItem(
      title: "Luigi's Mansion 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Luigi explore un hôtel hanté rempli de mystères et d'énigmes pour sauver ses amis.",
      image: "assets/images/luigi.jpg",
      pegi: 7,
      date: DateTime(2019, 10, 31)),
  GameItem(
      title: "Kirby and the Forgotten Land",
      platform: "Nintendo Switch",
      shortDescription:
          "La première aventure en 3D de Kirby, où il explore un monde mystérieux rempli de secrets.",
      image: "assets/images/kirby.jpg",
      pegi: 7,
      date: DateTime(2022, 3, 25)),
  GameItem(
      title: "Bayonetta 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu d'action frénétique où la sorcière Bayonetta affronte des créatures célestes et démoniaques.",
      image: "assets/images/bayonetta.jpg",
      pegi: 16,
      date: DateTime(2022, 10, 28)),
  GameItem(
      title: "Mario Party Superstars",
      platform: "Nintendo Switch",
      shortDescription:
          "Une compilation des meilleurs mini-jeux et plateaux issus des classiques de la série Mario Party.",
      image: "assets/images/mps.jpg",
      pegi: 3,
      date: DateTime(2021, 10, 29)),
  GameItem(
      title: "Donkey Kong Country: Tropical Freeze",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu de plateforme exigeant et fun avec des niveaux magnifiquement conçus.",
      image: "assets/images/dk.jpg",
      pegi: 3,
      date: DateTime(2025, 1, 16)),
];
