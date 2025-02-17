class GameItem {
  String title;
  String platform;
  String shortDescription;
  String image;
  double price;
  String link;
  String type;
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
    required this.type,
    required this.price,
    required this.link,
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
      type: "Action-Aventure",
      price: 51.49,
      link: "https://www.amazon.fr/Legend-Zelda-Breath-Wild/dp/B01MUAFFPA?th=1",
      date: DateTime(2017, 3, 17)),
  GameItem(
      title: "The Last of Us Part II",
      platform: "PlayStation",
      shortDescription:
          "Un récit poignant de vengeance et de survie dans un monde post-apocalyptique.",
      image: "assets/images/tloup2.png",
      pegi: 18,
      type: "Action-Aventure",
      link:
          "https://www.amazon.fr/PlayStation-Last-Part-Remastered-PS5/dp/B0CPFW7WVM/ref=sr_1_5?adgrpid=61701838208&dib=eyJ2IjoiMSJ9.zpyTVQPj2S_DzKHSOJ2_8CBqqIs8C3rBIfFaAWGoG3F2Yqq1Kme3s5ioxOshxt6AXiGSV4bxpkI6JXGDtMmZZ29T6xX0jZBCgg6B9hRpdW1p9gLm98E8vrIpghfHYU3l-yeUkSMyxlhnmDGQl97072gaNOxT6BpSGzlwBF61KuUUFqiQNUZcC9hAiJWY1vGe2iZ3QukmHGPn-d-3doOa53TstdhhlobKHPaGrJCpHhoutz4-P3Z156t0SONE7utMxAk0bMQsuW7lBmX3a0j-gqtw49EbOAxRpAEgZ5FiY7d-3VlLg596JITNImJP_3621lyDyL4VgSXBzNQ3T09ZqveWgIQVD_64rf1g2QERI48PKuRoHcpTGZE90OZ89jQc4YJXNcoqngyCMjEMadxttuq-Jvb8Vnax1pen1VT2cNeLQ6d9aGHvlvZoPhRT4r8m.qVXIGJUH3bL50kC-v0jzVXxugqQXumlvbd9_icNeiYc&dib_tag=se&hvadid=601445415351&hvdev=c&hvlocphy=9198873&hvnetw=g&hvqmt=e&hvrand=1781078025402286538&hvtargid=kwd-298347479998&hydadcr=26784_2675738&keywords=the+last+of+us+2&mcid=3a65a70db3483a1b9776e564d8454125&qid=1739811424&sr=8-5",
      price: 39.90,
      date: DateTime(2020, 6, 19)),
  GameItem(
      title: "Ghost of Tsushima",
      platform: "PlayStation",
      shortDescription:
          "Incarnez un samouraï défendant son île contre l'invasion mongole au XIIIe siècle.",
      image: "assets/images/got.jpg",
      pegi: 18,
      price: 57.60,
      type: "Action-Aventure",
      link:
          "https://www.amazon.fr/Ghost-Tsushima-Directors-Cut-PlayStation/dp/B099B95X36/ref=asc_df_B099B95X36?mcid=9d3189b5ebb73de2a5ae8066755f4688&tag=googshopfr-21&linkCode=df0&hvadid=701439836575&hvpos=&hvnetw=g&hvrand=14122863517428920963&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-1393595894325&psc=1&gad_source=1",
      date: DateTime(2020, 7, 17)),
  GameItem(
      title: "Demon's Souls",
      platform: "PlayStation",
      shortDescription:
          "Une refonte sublime du jeu culte qui a lancé le genre Souls-like.",
      image: "assets/images/ds.webp",
      pegi: 18,
      price: 48.89,
      link:
          "https://www.amazon.fr/Demons-daction-Version-physique-fran%C3%A7ais/dp/B089XJ83GP?th=1",
      type: "Action-RPG",
      date: DateTime(2020, 11, 12)),
  GameItem(
      title: "Ratchet & Clank: Rift Apart",
      platform: "PlayStation",
      shortDescription:
          "Un jeu de plateforme explosif avec des voyages interdimensionnels instantanés.",
      image: "assets/images/rc.png",
      pegi: 7,
      price: 54.52,
      link:
          "https://www.amazon.fr/Ratchet-Clank-Rift-Apart-PlayStation/dp/B08B44H982/ref=asc_df_B08B44H982?mcid=76b25bc2efbb39868844bc2a217b3046&tag=googshopfr-21&linkCode=df0&hvadid=701439836575&hvpos=&hvnetw=g&hvrand=11226661885692391627&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-957482366613&psc=1&gad_source=1",
      type: "Action-Plateforme",
      date: DateTime(2021, 6, 11)),
  GameItem(
      title: "Gran Turismo 7",
      platform: "PlayStation",
      shortDescription:
          "La référence ultime de la simulation automobile avec un réalisme époustouflant.",
      image: "assets/images/gt7.png",
      pegi: 3,
      price: 59.81,
      link:
          "https://www.amazon.fr/Playstation-9766292-PS5-Gran-Turismo/dp/B09GSK788K/ref=asc_df_B09GSK788K?mcid=c0427a8e8ac33836b0e6d9059f0031df&tag=googshopfr-21&linkCode=df0&hvadid=701439836575&hvpos=&hvnetw=g&hvrand=14459559293477859149&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-1435065001141&psc=1&gad_source=1",
      type: "Simulation de Course Automobile",
      date: DateTime(2022, 3, 4)),
  GameItem(
      title: "Horizon Forbidden West",
      platform: "PlayStation",
      shortDescription:
          "Aloy explore de nouvelles terres et affronte des machines toujours plus redoutables.",
      image: "assets/images/hfw.webp",
      pegi: 16,
      price: 53.99,
      link:
          "https://www.amazon.fr/Gra-PS5-Horizon-Forbidden-West/dp/B089ZVBHMG/ref=asc_df_B089ZVBHMG?mcid=8c6a32018f483ed583551547f91d2b63&tag=googshopfr-21&linkCode=df0&hvadid=701439836575&hvpos=&hvnetw=g&hvrand=5967069287396046549&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-957460996220&psc=1&gad_source=1",
      type: "Action-RPG",
      date: DateTime(2022, 2, 18)),
  GameItem(
      title: "Bloodborne",
      platform: "PlayStation",
      shortDescription:
          "Un action-RPG sombre et exigeant dans un univers gothique terrifiant.",
      image: "assets/images/bloodborne.jpg",
      pegi: 16,
      price: 30.76,
      link:
          "https://www.amazon.fr/Bloodborne-Game-Year-PS4-New/dp/B018209X7U/ref=asc_df_B018209X7U/?tag=googshopfr-21&linkCode=df0&hvadid=701439836587&hvpos=&hvnetw=g&hvrand=5620137642670957896&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-406130870785&psc=1&mcid=0e858a3d697d3747a839fe081d9cb221&tag=googshopfr-21&linkCode=df0&hvadid=701439836587&hvpos=&hvnetw=g&hvrand=5620137642670957896&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-406130870785&psc=1&gad_source=1",
      type: "Action-RPG",
      date: DateTime(2015, 3, 24)),
  GameItem(
      title: "Uncharted 4: A Thief's End",
      platform: "PlayStation",
      shortDescription:
          "La dernière aventure de Nathan Drake dans une chasse au trésor effrénée.",
      image: "assets/images/uncharted.jpg",
      pegi: 16,
      link:
          "https://www.amazon.fr/Uncharted-Legacy-Thieves-Collection-PlayStation/dp/B09NB39P2P/ref=asc_df_B09NB39P2P?mcid=42416949ae7a305ebb5bff2b19033611&tag=googshopfr-21&linkCode=df0&hvadid=701439836575&hvpos=&hvnetw=g&hvrand=10609174706856847322&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-1661552615647&psc=1&gad_source=1",
      price: 37.90,
      type: "Action-Aventure",
      date: DateTime(2016, 5, 10)),
  GameItem(
      title: "Returnal",
      platform: "PlayStation",
      shortDescription:
          "Un rogue-like intense où une astronaute revit en boucle sur une planète hostile.",
      image: "assets/images/returnal.jpg",
      pegi: 16,
      price: 46.90,
      link:
          "https://www.amazon.fr/Playstation-10RET012-Returnal-PS5/dp/B08QWCKXFN?th=1",
      type: "Roguelike - Shooter à la Troisième Personne",
      date: DateTime(2021, 4, 30)),
  GameItem(
      title: "Final Fantasy VII Remake",
      platform: "PlayStation",
      shortDescription:
          "Une réinterprétation moderne du légendaire RPG avec un nouveau système de combat.",
      image: "assets/images/ff7.jpg",
      link:
          "https://www.amazon.fr/FINAL-FANTASY-REMAKE-INTERGRADE-PlayStation/dp/B08XGSTM1J/ref=asc_df_B08XGSTM1J?mcid=156241fb8e843d2287be3e9d768c8985&tag=googshopfr-21&linkCode=df0&hvadid=701538268227&hvpos=&hvnetw=g&hvrand=17853840338227077280&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198873&hvtargid=pla-1191007009574&psc=1&gad_source=1",
      price: 34.99,
      type: "RPG",
      pegi: 16,
      date: DateTime(2020, 4, 10)),
  GameItem(
      title: "Shadow of the Colossus",
      platform: "PlayStation",
      shortDescription:
          "Une quête épique où chaque combat est un affrontement contre un colosse géant.",
      image: "assets/images/sotc.png",
      pegi: 12,
      price: 33.17,
      type: "Action-Aventure",
      link:
          "https://www.amazon.fr/Sony-0711719351979-Shadow-the-Colossus/dp/B071GCR61M",
      date: DateTime(2018, 2, 6)),
  GameItem(
      title: "Astro Bot",
      platform: "PlayStation",
      shortDescription:
          "Une aventure de plateforme où Astro explore des mondes variés en exploitant la DualSense pour une immersion unique.",
      image: "assets/images/astro.png",
      pegi: 7,
      type: "Plateforme 3D",
      price: 69.74,
      link:
          "https://www.amazon.fr/Playstation-ASTRO-BOT/dp/B0D67G5Y6T/ref=sr_1_5?dib=eyJ2IjoiMSJ9.zflAT2I4EoTvFa2YB_9ELOk62CrS-XxrL42axLT391O-s9M9PfVXjnpVIs7yvN_qPp9WjlQS0L9Bxcx2WbjCeMD6H91twBfUisZlHIBI9cn7bgN7IKdd_F3Hk2EsMnNIRXertipJ18tJQ6b_YImy-aLb8J7pvBZ18Un7_G8rdOCwJTnM6dMOdID_uMbPadQ7ayqdO2Rxs0RzaQbBAHgw8lZHE0DkfOWKw5b1ZL34DbTTRllE547dwfC0HuLT7hOJlrPm0j5fUxuIagKn2kUEkx5UyUaYkNpXwuaB0_DdKcWaJ1w3bdguA51v078KSSFT9VFPLshpjVGYnJEEez_PSzzJqcr3gWjwQwmGPvX4iZnwf4Fr8g83MjMxRvkgBL6VgqXZn9VV2ZtB91ezkz466QzRxU8dcB1H-2uGufiATcD3aRCO2ev6LYJWhfNlnzi6.eZ7mWQyNa_HJSDzjfw18JqWvqRqF-68zkKH5VZNMYSM&dib_tag=se&keywords=astro+bot&qid=1739812267&sr=8-5",
      date: DateTime(2024, 9, 6)),
  GameItem(
      title: "God of War: Ragnarok",
      platform: "PlayStation",
      shortDescription:
          "Kratos et Atreus affrontent les dieux nordiques dans une épopée spectaculaire.",
      image: "assets/images/gow.png",
      pegi: 18,
      price: 53.34,
      link:
          "https://www.amazon.fr/God-of-War-Ragnar%C3%B6k-PS5/dp/B0B6FGSKCQ/ref=sr_1_1?crid=3TJMOZCDPCPRQ&dib=eyJ2IjoiMSJ9.g817ZSvzMS2jQs7jaQfPp6LOYKVWc88oUEy1_95OASuMMnzzPpoAsc5Rdw8xDZMD_6gNEw0h7zFoEYdC433hKfP0fQE4rRHFdbQoaFXgPCzd-KEp8SI6voB0BpFINX5yFmIjPy1ANUGrLxJthIf2n9fh6N5_LDGVt-D5nenXVTBkCYgtm71cq1pX_ZWVwWFrAJBsSe9SOGR0VephZ5VcNYsCldG7gCv6rr1dJxj-MbX7mTzC5192n4k_OCugKdDNYyyumtHJwzUPAFdRsRGo2CIwLMWcENPsGy00KwPtWRAF9TDDcLVSZlHu_Okj8FoKMLNt3314I-j3sQDrl9ZVOAul5zgxip9eo2g-IAYc4n5oX1ZaOe04UUtS6aicqUzPGZp1o68UMI7uYohVG6qrhYSGzaQoG1n4Eh6DtfrWcjJCLAfRC5LpVK_keu4rjtPx.lM9-TawMZ9t2I-Ai3siUFWRxZse0pFizprzP-DbvE4I&dib_tag=se&keywords=god+of+war+ragnarok+ps5&qid=1739812314&sprefix=god+%2Caps%2C132&sr=8-1",
      type: "Action-Aventure",
      date: DateTime(2022, 11, 9)),
  GameItem(
      title: "Halo Infinite",
      platform: "Xbox",
      shortDescription:
          "Le Master Chief revient dans un monde ouvert pour affronter les forces des Parias et sauver l'humanité.",
      image: "assets/images/halo.png",
      pegi: 16,
      price: 26.50,
      link:
          "https://www.amazon.fr/Halo-Infinite-Xbox-Series-X/dp/B099KV6V8H/ref=sr_1_4?crid=1W2JXXPAT30LT&dib=eyJ2IjoiMSJ9.Hd-tj70ofGhl-5FU68zSeBlZjrNyZsFOkE6JzT7lzCDlxJNwzaV6KFs4YbfydE-ausrOyBL1xv5dGDFEb1DloOH0CUJ6XGjQFY0L7FUqDrXnJuN6B9VkLUaIefrUezjkNVqGLbFgTCrzFsNuBjSr5pI0fsb6RIE3RC8Vaaq3hWJKlHD-85DsbpP8mXdPkAIywEB59wjh8LjK1sv6lttpJ0A-jo6an2-JTgX5ClYf-TqvuvMHjunGoZ6r6azb7HwJNZrBgaUr97doAOdlPD_FB-6qNy3I2oXO1ChFKAPAVrrZIsksJ2IJT4uR67K_-lciRYGjjZfw99CJ1wgp_h3AB1vGH_owQjjW-6idMWe5PmbmPBrQcJJpI-P78b8zVWVC3QEn4JulE5Pi4vufjWmd9JOkl8yBVJfusUvl3uXMAS_o1tn7rdCBOzwW8I19DIqd.4msOXOiWkX6yEuN2WtFdMCQwac7e-CzDZEBYIqp5pX0&dib_tag=se&keywords=halo%2Binfinite&qid=1739812407&sprefix=halo%2Binf%2Caps%2C168&sr=8-4&th=1",
      type: "FPS",
      date: DateTime(20121, 12, 8)),
  GameItem(
      title: "Marvel's Spider-Man 2",
      platform: "PlayStation",
      shortDescription:
          "Peter Parker et Miles Morales unissent leurs forces contre de nouveaux ennemis.",
      image: "assets/images/spider.jpg",
      pegi: 16,
      price: 60.28,
      link:
          "https://www.amazon.fr/Playstation-EGM-PS-7171-Marvels-Spider-Man-2/dp/B0C85VFMRL/ref=sr_1_3?crid=5EXI90099BCJ&dib=eyJ2IjoiMSJ9.a3Rpsd7Tw-cknWrOv2s9O76L33tu1CotjSnbNJFyTht4Pb8bg-fVQ4Kn-mt6GgRgB6Te8F3sOQbim5U_pVm487CvRdCwSnGpkr-92aoevdKZok_QK14oCW1lzQd9tHyl7dTlvGRZMsd3iDq2kG81Ghwvmjy3JaJD7IXiVGa9_ZsJAM2M_i3tdwN7CXrax9TVqWxUUt8NfFnhKHMgNKUFJ8pnrzqErndYtrGDdOR0rqBqo8yuTk4cibpEXF7awwEL2WIHNXfQReh90QMIXhOvH_ZIIxcNEYSqzAH3S-M3JDpv9Up5V31a_3BknYtHCup1dYD1KbZyWLrAyscZzxynhWjYLOj4aDKN_4mzpyGgCBUyrtl3OOxm2GpdATKpn-fxWrVJiq7VC0K9aUUXDeVcLrPBIZvz97DIub15qBsmg6fPr5ZxUgGbilokxH6JPZvb.rDKzBExwZ5050zcfGN3V5UHjVm-mM_Io7GsTXvSXW4Y&dib_tag=se&keywords=spiderman+2+ps5&qid=1739812641&sprefix=spider%2Caps%2C169&sr=8-3",
      type: "Action-Aventure",
      date: DateTime(2023, 10, 20)),
  GameItem(
      title: "Forza Horizon 5",
      platform: "Xbox",
      shortDescription:
          "Un jeu de course en monde ouvert qui vous emmène explorer les paysages époustouflants du Mexique.",
      image: "assets/images/forza.jpg",
      pegi: 3,
      price: 55.81,
      link:
          "https://www.amazon.fr/Xbox-Forza-Horizon-One/dp/B097SCTGPB/ref=sr_1_2?crid=33Z2B30SKPUL2&dib=eyJ2IjoiMSJ9.EMBdgsoOJP_M12pBWe1hGxcwmnQsJqooFHzay1FKWC6j__yODH2J8xvKY8D01Y7PrfSoHSFJEwE56ldjCPMQCcbh5RfqzHiYUfb5gwnYm2F0u_dYEq-eoza2zE4_cNAa279RZWhWKMk5uXpK1tJty_A5Ld9Eqq62luXRvP8AnawypOuP0G8qppfEEgjqXmOHLqFSu_hFYQyB9600mErbZoNGWggR9nF_b2nsmQJUYpUTiZSSVE2pgbLrqk55BVqfyq_XLOAs6UNB2mzuHBZfHEyEqGUsP90_Ue0TPrjvqIb0X7EoLD4jTQEUSs5TZaPdFVERqUG25pP90QocKWeKrrILHohnZ_NdmkhUMViYgfHKoptiqNxo9oHrqOi35ZcW_5OyRGCep-9geRs4BZglIFNEjSbNikQrSdW-SYGd3qM0lT1b1rt7WPJCAFXOCLQV.WnBT3vhVkV3PDzaMxoNtJ1DZSVxAB4xedeLm2BNIkI4&dib_tag=se&keywords=forza+horizon+5+xbox+one&qid=1739812711&sprefix=forza%2Caps%2C150&sr=8-2",
      type: "Simulation de Course en Monde Ouvert",
      date: DateTime(2021, 11, 5)),
  GameItem(
      title: "Gears 5",
      platform: "Xbox",
      shortDescription:
          "Kait Diaz plonge dans son passé pour découvrir les origines des Locustes dans cette suite intense du shooter culte.",
      image: "assets/images/gears.jpg",
      pegi: 18,
      type: "TPS",
      link:
          "https://www.amazon.fr/Gears-War-5-Xbox-One/dp/B07DNNVYS5/ref=sr_1_2?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2DVZXGVHIOA68&dib=eyJ2IjoiMSJ9.f0gOBeoctXeona_doP4JB9z5QM-RVcioq7ywN7HuZTv04MvnbTdZhIcUcYZqK-fqZVxqYddI-6fzfJ_NV2riYkYMRzRKjn29-WbIPNJzK-UgotjloqnY8NrNMZjqF0sRc04xcrkSLHvCMTXfTebyIh9RUtSSKCVNiyiO3yuS3a9Wfbrqs9mkrb4kiPxi3vrf3tqOlCndv6yNioRDm59veYHyIWpfXYBF6cq7QArSL1oBmAeYMHIAPABW2Fepj6tD72J-uSsYcdQamHd-fttWMr-0XvTj62BBb16s2HSYQ5CA7RENcdba8ZgTImvLquOtiWYDlwmG4eM5PNJZ5Ro9jZ5KpuWeqhmuucAYpzFhofTRC2VAlcHWUwctDoz5SotLUE9RDess-pADJxt8AMzm_VPCEl_jH1pIpUhtG2Odurq2saY3npT1N5ChB6IFfKF9.UvlL0ewM0Z1rHuHBmyiE8cqPLasQFz9EgTjrLXvFsl8&dib_tag=se&keywords=gears+5&qid=1739812771&sprefix=gears+5%2Caps%2C111&sr=8-2",
      price: 35,
      date: DateTime(2019, 9, 6)),
  GameItem(
      title: "Fable",
      platform: "Xbox",
      shortDescription:
          "Le retour tant attendu du RPG fantastique où l'humour et la magie se mêlent à des choix impactants.",
      image: "assets/images/fable.jpg",
      price: -1,
      link: "",
      type: "RPG",
      pegi: 16,
      date: DateTime(2017)),
  GameItem(
      title: "Starfield",
      platform: "Xbox",
      shortDescription:
          "Une épopée spatiale ambitieuse par Bethesda où vous explorez l'univers et façonnez votre destin.",
      image: "assets/images/starfield.jpg",
      pegi: 18,
      price: 35.05,
      link:
          "https://www.amazon.fr/Bethesda-STARFIELD-STANDARD-XBOX-X/dp/B0C7QDL1PC/ref=sr_1_2?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3HS91P1C6K0QJ&dib=eyJ2IjoiMSJ9.XHlkiDqQhgKKf_vkqk3cqizqNv7CuQOG02OsY0CaGJo_QY9kYC1O-5WikeCYA7DrzZ1Z2z0DSc_4i1vcW0fWxSq-cU_sBO0JMlZGMppf7_c1w4J7lDrnvtRRVey0d5pJU2E_8nYAKqozBrFHNlanTEWkwpRAdr1halVTWrTSTMZcYg_6kmRNFTR3iMKp0cryQg9jUXefZYBxI_hzy9WnLIFli-d6xMWQ_H3S3n0kKU0U-sHOQrKHCOod7yPokPRKQEQlRbIKzVS7dJ2Jr_aFTZbGAk6a6sCl7WMfFzMTI2cAIdEk6jJLUIvxZvuTt5yBlMf_wxaZJAsjYwyCUHBzG5HyE0_Jtzfjky2DPm87YwoN0l7Npjm6mSJ4y-s3tYobybXifHaE1yy3SmfwQMv09AD0pTH8IDBga90mANKVfrAkV-E-hyfV_yRZy6MHHx9U.-nRDMLQjes2wLHPYj5pZD2kQPA0QLfceLawFSu99Huo&dib_tag=se&keywords=starfield&qid=1739812877&sprefix=starfield%2Caps%2C130&sr=8-2",
      type: "RPG",
      date: DateTime(2023, 9, 6)),
  GameItem(
      title: "Avowed",
      platform: "Xbox",
      shortDescription:
          "Un RPG en vue subjective par Obsidian situé dans le monde d'Eora (Pillars of Eternity), plein de magie et de combats stratégiques.",
      image: "assets/images/avowed.jpg",
      pegi: 16,
      price: 79.99,
      type: "RPG",
      link:
          "https://www.amazon.fr/Xbox-Standard-pr%C3%A9chargement-Windows-t%C3%A9l%C3%A9charger/dp/B0DTL7MTVL/ref=sr_1_3?crid=4A5P0MVE1UOP&dib=eyJ2IjoiMSJ9.IEN8T2vu9xlN2lxPt8jUt0gQJ4m4LVejsRNwX7ApNvQcvFHbFfJao32T-Ak0DBxVYQqMSO6dnuTLD5e1eFO-jXsIQlLxfxNQUnCL9002ezz86suUN7JqnqUMlr7X3jJXnKHYreXTeD26bmVXipwOiEy_OnEARe2dvb598kfoZ8P9kxjdHFsAKTheUTaO7r12iZQeDeQts26YdQwYRanrSeBshOPZcMorRDts-myp2gMFKrqQAbAmYYY_PdSwVaM_jExE94eMdP0663jBmUqK_RLmyoAcQMCArOvV-wKNZxJMyKwnNAM7FUO6h65SxmSKTIbx_3i16oqUT4KprPbFmXPg_uLFvT1_uOwo4zG7gLQNbRhavBl95hYZlZ313vBVKCg8VDt2QimweyinkfBLkx0mik4loAbSi7BQdSKM1tqmjx18sqEolmDRLp0bj5Rt.zucx-dTdlAjQ4awGiAMgpcojZXeF9m29OXlvRl3gT1Y&dib_tag=se&keywords=avowed%2Bxbox%2Bseries%2Bx&qid=1739812911&sprefix=avowed%2Caps%2C117&sr=8-3&th=1",
      date: DateTime(2025, 2, 18)),
  GameItem(
      title: "Microsoft Flight Simulator 2024",
      platform: "Xbox",
      shortDescription:
          "L'expérience ultime de pilotage avec une modélisation ultra-réaliste du monde entier.",
      image: "assets/images/mfs.jpg",
      pegi: 3,
      price: 69.99,
      link:
          "https://www.amazon.fr/Microsoft-Flight-Simulator-40th-Anniversary/dp/B0BKSP3BND/ref=sr_1_8?crid=IF0OMV5UI600&dib=eyJ2IjoiMSJ9.pkf2EPmg7xtDrxOPvckOnhMfVAE-fIE88f08UQre_SX3XCkuueNXRmkwuhxLVDIuG-Z85rs2aijYfwaYMOiyKzvsxPLMUdcjbYo5inBCnfUvczQN_y-KDtM4yTIStDDyUMt4m29_6jLka-lR7_Huw1U6aQ6UOZFmJ802nEil8W9d6XnNRp46GJ1Yazkl7nwDfOEKxKFZxVJnnIoE_INcYWX1Vci1ReldKHgDQidCneTMGdCkkBTBm8f1vQIuvkmiZcTCwGaTmh-MkzHXh9UCpj6-G5Ls2v4hBZOoSToVhEkzNGS6UGTT4U3b0pbSa2Yg3BqW90Ntbiq0ZFF3KkHY9V3DKqzg4JsYYTzJcRDo05pKsANRYEXfMf6krnHxdebeI-bvHtCxYKY0jTgDKhJtOGClpGQS5aY6_DbAy-6gTebDu4aFv35lF7WPbKuoL10w.mdZRMk_1fHCVeS5Skd6lo8u7hkIFq_GDhNkZtL3I-NA&dib_tag=se&keywords=microsoft%2Bflight%2Bsimulator%2B2024&qid=1739813054&sprefix=microsoft%2Bflight%2B%2Caps%2C6953&sr=8-8&th=1",
      type: "Simulateur de Vol",
      date: DateTime(2024, 11, 19)),
  GameItem(
      title: "State of Decay 3",
      platform: "Xbox",
      shortDescription:
          "Un jeu de survie en monde ouvert où vous devez bâtir une communauté face à une apocalypse zombie.",
      image: "assets/images/sod.jpg",
      pegi: 18,
      link: "",
      price: -1,
      type: "Survie en Monde Ouvert",
      date: DateTime(2026)),
  GameItem(
      title: "Hellblade II: Senua's Saga",
      platform: "Xbox",
      shortDescription:
          "Une aventure psychologique sombre et immersive qui explore la mythologie nordique et la folie.",
      image: "assets/images/hell.jpg",
      pegi: 18,
      price: 49.99,
      link:
          "https://www.amazon.fr/Senuas-Saga-Hellblade-Xbox-t%C3%A9l%C3%A9charger/dp/B0D224L2YH/ref=sr_1_1?crid=DQ2BJAT68QBZ&dib=eyJ2IjoiMSJ9.SLcSrH-tDx8shga81lIbxSPsese750qxDm5xbc-jVVAuDpoTEJz4UGpEa3GL39gorye3TvjsvN_Zc243FbN366cuKONYfGQgs-mFEXMsKpjnNjPW1H3Q8yZccZyiIHwRjFJzf7c9Xfpl-Aoq96T76vYW79NmIKuMKMjqvjImQtYKdiH5rvsmRg9t_ETrooGy6tAb_SugkzBSLvlUvTnbLWzTeuGaP_MIZi7lc7dEMCRtfNdXFioMUqFluCms6bV7K7Yod2DAurM8x9sWrMVh-_xQZZYE_iMpqTZ9ou-ho7eukr10Wn6w8aYrGpQFTBkNKvN1GabBwIpF5O2UtjLa4Dydfx_BjjzH431Ni0hF8ah9sHu3DWx0ndgcAc3ZN-I3KoSjZAMdfbqHwguPZaouuE85hWINuJ3s77674TEZHMrFaiihSRs9OaczHTIrgjfx.yW6WvHqwxjNs_ejB7HK7hNrBDJftcrOKQ1JM8-NdWyE&dib_tag=se&keywords=hellblade+2&qid=1739813726&sprefix=hellblade%2Caps%2C138&sr=8-1",
      type: "Action-Aventure",
      date: DateTime(2024, 5, 21)),
  GameItem(
      title: "Everwild",
      platform: "Xbox",
      shortDescription:
          "Une nouvelle licence de Rare proposant un monde mystique rempli de créatures fascinantes à protéger et à comprendre.",
      image: "assets/images/everwild.jpg",
      pegi: 3,
      price: -1,
      link: "",
      type: "Aventure",
      date: DateTime(2025)),
  GameItem(
      title: "Grounded",
      platform: "Xbox",
      shortDescription:
          "Un jeu de survie en coop où vous incarnez des enfants miniaturisés dans un jardin regorgeant d'insectes hostiles.",
      image: "assets/images/grounded.jpeg",
      pegi: 12,
      price: 39.99,
      link:
          "https://www.amazon.fr/Grounded-Standard-Xbox-Win-t%C3%A9l%C3%A9charger/dp/B0BFKCRZ6Y/ref=sr_1_1?crid=343CL1VTOYCVX&dib=eyJ2IjoiMSJ9.39DJLBGBrN08brQZTlmqGqfsUvXMr02Mzr_nIdeyka5HOiPzryGr3vALXAQDOJjF31Zfi932o_2wJT1kjRCYJ8bHWcZ_uiy70DKG0QRgfo5gSngar6gwahJO1JgF_TqwadIH-Ul1zC-A9558hy9m5ArOhxvZgfGO1os2L09MSQe2Xfk_SGfy91dhNlg4eMjOvHk3KvcSu1O8P7EixlXbry0an3jCjHYbuMtTVG8Domo.L22w9I0UhR0KZGRsWdotNGxe-KKebd8IBPMlM5HsGKE&dib_tag=se&keywords=grounded+xbox&qid=1739814081&sprefix=grounded%2Caps%2C168&sr=8-1",
      type: "Survie et Aventure en Monde Ouvert",
      date: DateTime(2020, 7, 28)),
  GameItem(
      title: "The Outer Worlds 2",
      platform: "Xbox",
      shortDescription:
          "La suite du RPG satirique d'Obsidian, qui promet encore plus d'exploration et de décisions cruciales.",
      image: "assets/images/tow2.jpg",
      price: -1,
      link: "",
      type: "Action RPG FPS",
      pegi: 18,
      date: DateTime(2025)),
  GameItem(
      title: "Sea of Thieves",
      platform: "Xbox",
      shortDescription:
          "Un jeu d'aventure multijoueur où vous vivez la vie de pirate avec exploration, combats et chasse aux trésors.",
      image: "assets/images/sot.webp",
      pegi: 12,
      price: 39.99,
      link:
          "https://www.amazon.fr/Sea-Thieves-Standard-Xbox-Win/dp/B08ZSZ4T3T/ref=sr_1_2?crid=31HRDRQ2GY20M&dib=eyJ2IjoiMSJ9.VY_hTsAo7TsTjxeOtptd9yY4Qxf6DPx_CttQRrMGrocL42jMmNBr1IBwRdCZ3bcvE7X9WrIHc5DjY7quU9Uo3u8v13hUSlL2r4AW5iIf-XbKjO3xVvK00CJ07mru6KnHwU19Sm69Gmyy9vop-ZfPp0EqZKOQhifHLmSMdiMxFdZIq5vPrrSgowt_PNF0WRxXwW1_n9uhkihXIJDsSQHMT1CKVtjCynMI15zatn0_hAk.uJgnJmhjvRswPNvKXtx8eXwRswp2I9-9uc8-Bcn6-Uw&dib_tag=se&keywords=sea%2Bof%2Bthieves%2Bxbox%2Bseries%2Bx&qid=1739814307&sprefix=sea%2Bof%2Bthieves%2B%2Caps%2C143&sr=8-2&th=1",
      type: "Piraterie en Monde Ouvert",
      date: DateTime(2018, 3, 20)),
  GameItem(
      title: "Redfall",
      platform: "Xbox",
      shortDescription:
          "Un FPS coopératif où vous affrontez des vampires dans une ville envahie par des créatures surnaturelles.",
      image: "assets/images/redfall.jpg",
      pegi: 18,
      price: 18.89,
      link:
          "https://www.amazon.fr/Bethesda-Redfall-Standard-Xbox-X/dp/B0BT25C6N7/ref=sr_1_2?crid=17K4JT8647R2&dib=eyJ2IjoiMSJ9.iHFD0IJGQ5pabOid4TP2ZMz5OtEq7aR_FjUlrzoxNjxJrsEsQNn8i5ucnzNcJn2AF0LzWrrhvR3A2N3eFGhHcesfFxduAb9gUPqMbhQfXYCipKUiOZQXYrWfEpWjleclx6dAe9UhuysmDA0SVlDu51AI--_cs96mw_RWtWFgJ0OMBweF7qZ_L0wL9kRVJ71YLzRb8XVIaaSlJLOUQxiTJGilZBm-_xsWJVf_agS4ckc.UlJXpdttFVdJVNkz-OSBqwC3cEoVpwK3VX4sZ8YjBhg&dib_tag=se&keywords=redfall+xbox+series+x&qid=1739814568&sprefix=redfall%2Caps%2C141&sr=8-2",
      type: "FPS",
      date: DateTime(2023, 5, 2)),
  GameItem(
      title: "Pentiment",
      platform: "Xbox",
      shortDescription:
          "Une aventure narrative unique en 2D, inspirée des manuscrits médiévaux et portée par une histoire captivante.",
      image: "assets/images/pentiment.webp",
      pegi: 16,
      price: 19.99,
      link:
          "https://www.amazon.fr/Pentiment-Xbox-Win-10-t%C3%A9l%C3%A9charger/dp/B0BJMQPSSG/ref=sr_1_1?crid=2RNSL0VJJPU9A&dib=eyJ2IjoiMSJ9.BR2lRf-baOqjPb80_ZI7mIqE8OG8yiwof_5jKpFFyxcorXDbfXH3uCT-xes2doIlhM2DLxcfk2q9yZLwn1vqt-8fVQKe03eVICiYl2ggBzI01uifKmAZHOS7QMwupVn9.g9XNTFl2F4cKz31_0WQQGOwoyh-q2Kujo6QYbYyv4iA&dib_tag=se&keywords=pentiment+xbox&qid=1739814630&sprefix=pentiment%2Caps%2C111&sr=8-1",
      type: "Aventure narrative",
      date: DateTime(2022, 11, 15)),
  GameItem(
      title: "Super Mario Odyssey",
      platform: "Nintendo Switch",
      shortDescription:
          "Un voyage épique avec Mario et Cappy à travers des royaumes variés pour sauver la princesse Peach.",
      image: "assets/images/smo.jpg",
      price: 44.49,
      link:
          "https://www.amazon.fr/Nintendo-0045496420888-Super-Mario-Odyssey/dp/B072KJWYL9/ref=sr_1_2?crid=2DBULB5M09LEF&dib=eyJ2IjoiMSJ9.ZrMTyHsv-60Z6O1UKXDGkMCJjKI9t5XenqgKN4ejuoq6yg4I8ULLEhulVbgJiJKok6SnZcFmahhh1zBhO6PKh1qb-SD-YHw8aLmXYSQ3uXImVwIxIpy4FJFKTC-qV1qhGygeIAggmJtBz1fg2qn-0guJZtk29TXiWl7ImfcTbnRh-0LrDCjALNq_9RSUlponM9-uq1KvM8Cv6f-dNdTVU-ZTbrHEb6eVCrpPl62YbVaOFkOW0qfM0A_UZakbw_qlH0iOs3WPZrLPjXIoCG3Zz393mN5pG_2BtelLLdc38hfjnqiFehUXgpM3xB7-r4jNSWjpaUIBuxIDjf4upznQAVjNgCT1A0lr4nB1MbUxSG7gzFdgovL5eFOyg5iOwfFuSSqkky-0MvIX-ybk0oLWL-IcWnndNIlzdusZNc-irn53agfIHBcUBqC4V6SJ8lgT.a8fZGEhr2XQugcGsy8mcyLrUT63Fo1zJMavcyG6BW48&dib_tag=se&keywords=mario+odyssey+switch&qid=1739814693&sprefix=mario+od%2Caps%2C119&sr=8-2",
      type: "Plateforme 3D",
      pegi: 7,
      date: DateTime(2017, 10, 27)),
  GameItem(
      title: "Mario Kart 8 Deluxe",
      platform: "Nintendo Switch",
      shortDescription:
          "Le jeu de course ultime avec des circuits emblématiques, des objets chaotiques et du multijoueur fun.",
      image: "assets/images/mk8.jpg",
      price: 44.16,
      link:
          "https://www.amazon.fr/Nintendo-0045496420246-Mario-Kart-Deluxe/dp/B01N223WHL/ref=sr_1_1?crid=3DC47OJRJN5O7&dib=eyJ2IjoiMSJ9.gF8JTBXSmCrp796EK_HQdLEn47I9vGwMe8zzEB8CSRigEEWyABbiR1Dv61jmM3QiPn2CFl5KIuB0tgGij4JeZMw2Nbr75VIp4W0ibIJfg4IKaFzAsOCA7EUByq9Ne1ca_UPA9wI7Srdzxs7Jwe_qeeSHjxakCz5_4TUHsbSYSXEfrnXdFKE67OgpbkiamO56ja6v3l4HXal7Vjzl0eZO8-B6RKqNlWiLEkR1OkPjALwDWRJVWVVumQC7t8y6IFwbcGBVfUfKDqIympVZvJvZ8P-Vng3Qh4lDCxHV586DRJtuyaMU2AhTm9nS0Z1dPmD9qrV5e6XkRR1PEYxoAYFbbwFGu8m2_ZOfB4F2vEir8hP_GFUwH-eRbKmI-Vpmgg0W6o1MUkuczEJZfgPDNmNXTv0t5Ym9Xt9MjxSr8ihPXpbpbDXgYr0MvH52xBksHeum.3HqHElYKrlLLpJeizX9qz5pWzy1IabzCCRdp-A4UdvU&dib_tag=se&keywords=mario%2Bkart%2B8%2Bdeluxe%2Bswitch&qid=1739814743&sprefix=mario%2Bk%2Caps%2C124&sr=8-1&th=1",
      type: "Jeu de Course",
      pegi: 3,
      date: DateTime(2017, 4, 27)),
  GameItem(
      title: "Super Smash Bros. Ultimate",
      platform: "Nintendo Switch",
      shortDescription:
          "Le plus grand crossover de l'histoire du jeu vidéo avec des combats intenses et stratégiques.",
      image: "assets/images/ssbu.jpg",
      pegi: 12,
      price: 51.49,
      link:
          "https://www.amazon.fr/Nintendo-Super-Smash-Bros-Ultimate/dp/B07DPQD26J/ref=sr_1_1?crid=3OME9XUBTDOZE&dib=eyJ2IjoiMSJ9.H9bHnZfjafc73qOhb7_3wUfwhOikBobXQhNCdtOhCb4HaW407xYABCjI1alR-JnNsJmxv3YQCvOUE-ST2omzBFIZnrCRBv_BnMaeLvRnsRuBo_xdO16bHt--5z3EMC22_3GPTnH2cT7KeRe0n4lmf8wMdX1ihlr36ZjaH14--3nEwLgVsAPL4_WU3E2kYhM0fkBwfv14czLJQqtkz3n4GxqAryZFDdsXW00C02nlKMSqtuu-zLM97erYYvOItezYt8MkGtugPr0alfVcThvI0ZXCzX6LJLoAVAA6qzhuxrLL9NZIIVzb1ARopTCzejCm9tZ95ZFLhKxLCmZAfWIO0SE7IccjNs0sOm07EYdNnBm0WMLvgNjtrFqf5VUWC-XsRaNAbwF5jd7rDQDIuBfqi_tnoa-_fotPTXGQMnqgXvSkLGtpRUkQexsgD_7LUMxl.PirysHzuqLGYsrdM9XLG13Hzd-cQ5xKRhSzgDj2eNHo&dib_tag=se&keywords=smash%2Bbros%2Bswitch&qid=1739814849&sprefix=smas%2Caps%2C122&sr=8-1&th=1",
      type: "Combat Crossover",
      date: DateTime(2018, 12, 7)),
  GameItem(
      title: "Pokémon Legends: Arceus",
      platform: "Nintendo Switch",
      shortDescription:
          "Une réinvention de la formule Pokémon qui vous plonge dans un monde ouvert à l'ère féodale.",
      image: "assets/images/pokemon.webp",
      pegi: 7,
      price: 56.98,
      link:
          "https://www.amazon.fr/Pokemon-Legends-Arceus-%E8%BC%B8%E5%85%A5%E7%89%88-Switch/dp/B0914YGQSH/ref=sr_1_2?crid=3ALP37LJXQCZR&dib=eyJ2IjoiMSJ9.1dzrkC7YS_kswApTCMhbH5xv9YgYeniFL2vKclwN_udRybhJE69fxKXZh2sh8aAmhijUcsnCneMAf1BOY6uSpvgA6R8LIu-p_pcJ6qYIXwBjC_XhPIlTpkLfq6hjQeCKmnO9ipNG72llXA5QjlLcWV_zIOkQGmeerTCXlSKuix4d1yVJ7U2HOr2AbcWYJy-PZPvD2e56aMaOH3FIrB2hM9_0jHxEceFwihOjW8t4SxjQMIUZQlFnQflC3Qi8we9W1zZqGZyh3ojnLFjg7n0hHTCJKyn9xuKRVZoAWSbhNnzIKZU1psrkt5I46bI1ZkJdN7z9p9tgUYDeHtbQlScQjubkRAU886zfqCUxEEHl3QDtSHRgvk1beqY4Ojb1S2VI849ZRzS8vmit7i83yH7l86-3Vc8MKffB32gH4vSb6nYUjBgpvKC5_xoHOoCXwD9X.UTA_JCReFWNgiFt9AZixZEjw-wB0OkNyxIsXEuOtw54&dib_tag=se&keywords=pokemon+legend+arceus&qid=1739814912&sprefix=pokemon+le%2Caps%2C125&sr=8-2",
      type: "Aventure RPG",
      date: DateTime(2022, 1, 28)),
  GameItem(
      title: "Splatoon 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu de tir coloré où les Inklings et Octolings s'affrontent dans des batailles de peinture dynamiques.",
      image: "assets/images/splatoon.jpg",
      pegi: 7,
      price: 44.21,
      link:
          "https://www.amazon.fr/Nintendo-Splatoon-3/dp/B09YMY4QRD/ref=sr_1_1?crid=1QM0BDD4MEOAK&dib=eyJ2IjoiMSJ9.hfBlihRjgqJwEH-nUFhnHOk6GD65QqVlSy3v4HKhgI7zka5FpL3VaJy5uMaRWuJr2IXi1uUFc5Ur1EnbHa8L-T1tMp7OSfSLutUI7jFZe20H4X6n-ON2wd49KSvyUM9MJSowrxDu4x3qyt7jwJdZYtTJctbRooZNd2Bu8ukGDGldNbvfvVD9qAKB-3y_fJl-P5GQuL3Ro1YpVsmbE8e7EMS5AROUCZlMH-Jeb3MRzm6bTgYESbbp5ip2XxnqkwdTvRj6yn_sk7-2UwStUsVTGLUHnZ4GACzHZfS7u3mMH7_v9IzowJdMF_iIdvJOOFB0uugeNT1CbwkP0bPaqKWRq28NnnDTPUsTiRSqw41YcJp9tA7CU9AfUAhcHzOFnFIrFLEYI6w6dkeqtT2KoqEuSDSO9M9r1tEQE6dVG7MGzJROtZ0HwgVP1gwO-zUAZico.Lkd746DK2ljiS6vzAOqN4cr2oY2nMvIQyV346bBFVts&dib_tag=se&keywords=splatoon%2B3&qid=1739814969&sprefix=spla%2Caps%2C110&sr=8-1&th=1",
      type: "TPS",
      date: DateTime(2022, 9, 9)),
  GameItem(
      title: "Metroid Dread",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu d'action et d'exploration où Samus Aran affronte des créatures menaçantes sur la planète ZDR.",
      image: "assets/images/metroid.jpg",
      pegi: 12,
      price: 45.10,
      link:
          "https://www.amazon.fr/Nintendo-199031-Metroid-Dread-Switch/dp/B097F76RF5/ref=sr_1_1?crid=1UXY2RS0LAK7O&dib=eyJ2IjoiMSJ9.0mt3LBfNMbq_ziPnsEUYCv6aA9lQCF4JIdrUHE9C3Nj1tupdg4WBqCfnp7cqWRfOIFR0RHhWKobHt2MVYvEXjh-ArV7SN6mFyd9nRv7LRV5jYyCZnsJQCa0FE7peqaq7hlAQ3iDli10UoEJOtKg1dZhoFsKRSFRLF5yvYi9dJ98t3rWNo0pZLtzrYYwlvrdqm2SysDuMM5r_fx-Xx06HzN5hV2Nsxe2CT9umWPpqzszTDptPMMc0V7sCReHFiziEwpiBWsjQHRdugFobdhjm2J7CVP3TmWwSOH9uZdUm0wg1BvRZR0CLyAOgHIszjQqTfYqxK1mOocIOY4yWRIOct9Cnr1LBtXdpYK7PSJ-MH4tTtiI9fZ_qrEJPBjiTbAdp5umkqcrC2e5HfoQ14CMYCYYYviYzMMj9SUkxTvO10R98Q70O2xchkffMA2UOVzNe.lKjnARtAqlDDI3W-WE_1Tm2nyJ5stYwoUyP-r1qm5m4&dib_tag=se&keywords=metroid%2Bdread&qid=1739815024&sprefix=metroid%2Caps%2C126&sr=8-1&th=1",
      type: "Plateforme Action-Aventure 2D",
      date: DateTime(2021, 10, 8)),
  GameItem(
      title: "Animal Crossing: New Horizons",
      platform: "Nintendo Switch",
      shortDescription:
          "Créez et personnalisez votre île paradisiaque dans ce jeu de simulation de vie relaxant.",
      image: "assets/images/acnh.jpg",
      price: 44.16,
      link:
          "https://www.amazon.fr/Animal-Crossing-Horizons-Nintendo-Switch/dp/B0821XHJB6/ref=sr_1_1?crid=36AR3FLRC16HZ&dib=eyJ2IjoiMSJ9.L_JK4e2v4HySGy0K5XLoWzkLwEUDR5mrji4d9bJpoeKRdzujxBlSno1tk0FTW786vh3FUcMaU0YGWK3wcgS_jMJUaP3iWMAaIbVj9OPI37lR_Ril8nS2SK4gn2ClmPbb7ZVZ_rRfzR0JM6wTnXGrEg6g61DgygeBnJ56oJZtoQfMFFeYpbkaaGKa3HLCGFIRowXjHBf-O4YpOars-IQnkOaGnZ2BxHWvIU4E_iPLCM3tYdE136VFYbi7ldjzRaTwbJbIPGXDqNWJ6GiUkLGLWLR2ZjaQQubjrMfD9T8HfhjBNIAJq7y0ViGAj4FaIq_3L-_bJQvyM-o1_wl_SmNDZVQjmC3N7-JUyeUuOhzK_M85zS9vFf3QeUrnFhXKEoKaKpPanFqgumDX4G_-GiIX282exmbbW5sHKU04I_s1SQPGap2-LRMSFLvJy3zhZT73.80_v8qmMZ3hsqM_5g5n8_CVFVLzoFMj-0wcdEd6x3ho&dib_tag=se&keywords=animal+crossing+switch&qid=1739815176&sprefix=animalk%2Caps%2C144&sr=8-1",
      type: "Simulateur de Vie et d'Aventure",
      pegi: 3,
      date: DateTime(2020, 3, 20)),
  GameItem(
      title: "Fire Emblem: Three Houses",
      platform: "Nintendo Switch",
      shortDescription:
          "Un RPG stratégique captivant mêlant combats tactiques et intrigues politiques.",
      image: "assets/images/feth.jpg",
      pegi: 12,
      price: 55.98,
      link:
          "https://www.amazon.fr/Fire-Emblem-Houses-Nintendo-Switch/dp/B07NSNT5HQ/ref=sr_1_1?crid=3R5BU7H2218TH&dib=eyJ2IjoiMSJ9.FtqB3H6beryPHccItPGS9cy0PlObjVA4NlLpyYk8lf7qL0ChtdI4A-uAE1K5fFBxPUNwndnUKBAvfjDGvAyXdY-RtvjQEMOa6FSmlHk1NEQlq56PqtNKp3wSwbF1mY367XOMN7wKQM2rj2TU0hpsupZPWKmb6FKvg2XOE8cx5bD-XJ3RKan4B3_2h5qu4YilflLiRiUyV5MVoBwTvSgGeIi6wyNXPZWPhdLJKhxA1xbHP31DduXkrmJdkvBoINehMcz3Yi4Ugi8BQc2Qm0YQmrOdaRnLtL4zBD5Rt-Js5-NL5NysmjZLjKk4t3rusKLhl7HtXxBwnLRy4oA-3uMZR9S4MJT99Ndbk7OyfCCXiCy9o7k1BUZmmtwPn6fuO4HykIPQSUwV2ARv1ExFub2fBK_2-Nj0fkOw_d92e_O4AV78NVeuTgHFu3BpW-RLQ59Y.ClPJyRU2rz46XxDQFDfZsSHCnKBknj8o8895d16G47w&dib_tag=se&keywords=fire+emblem+three+houses+switch&qid=1739815248&sprefix=fire+emb%2Caps%2C152&sr=8-1",
      type: "Stratégie RPG",
      date: DateTime(2019, 7, 26)),
  GameItem(
      title: "Xenoblade Chronicles 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Un immense RPG en monde ouvert avec une histoire profonde et des combats dynamiques.",
      image: "assets/images/xc3.jpg",
      pegi: 12,
      price: 50.48,
      link:
          "https://www.amazon.fr/Nintendo-10009755-Xenoblade-Chronicles-3/dp/B09S78Q8SX/ref=sr_1_1?crid=1MF0BDP5SUQP&dib=eyJ2IjoiMSJ9.Vmw4SwgQ1ksswmsgPZelit5yEuVgLWQCoaFLnTdVMTjld2fTBfNxs_mg0ofK3reT8OM2CYi4AoPH0GyA72quD2lNnRzD-CbeddCe-GRL_SoiK10KOlJSbduTqe1pFkmccZZ8rDl7e6zrqLkkGcHOYHDAjkAXuXJtuVpQJgxf6U9g_ZPrHuyAUopo76jXT6IlOXeeQwWxGHtoh4RE0LT-dG2HpWF2ykpNMB5aGlQeA0Z197NlBRraEkpT0xUIhmtG3MZvv4JFVln2-ARiWX1Vtl51z0BMmBO32wCRtgOE4gT2H8GgTB2O9JHsXSil6FBx_FRGxO-J692UntIVfRWr8jUtYBWlBR1siQBHZdvXm-PE2OK8JazGRhuAwrUuCHPTzsyZ9HbiByGWMJralQv_SYOsoU-hAjbQMI1vGPSzPnY.fP8TwSjFpHRo7U28W9abcBnTYnW2Buyq2jvue0_vBao&dib_tag=se&keywords=xenoblade%2Bchronicles%2B3%2Bswitch&qid=1739815319&sprefix=xenoblade%2Bchronicles%2B3%2Bs%2Caps%2C153&sr=8-1&th=1",
      type: "Aventure RPG",
      date: DateTime(2022, 7, 29)),
  GameItem(
      title: "Luigi's Mansion 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Luigi explore un hôtel hanté rempli de mystères et d'énigmes pour sauver ses amis.",
      image: "assets/images/luigi.jpg",
      pegi: 7,
      price: 44.21,
      link:
          "https://www.amazon.fr/Nintendo-Luigis-Mansion-3/dp/B07SC9136F/ref=sr_1_1?crid=2CSQN0HXST99F&dib=eyJ2IjoiMSJ9.26zH8G3NS24qAB3Z7Xd40Iv0ZeslM_hWdalaOxFPAfdJxpjiCHWxf7VauyeKlOhL3MGff2F8Xw8AU61qIq05lKGOK19BCrIJrQhbrmxhQ-HZHh8-2dVmgtDDRCD8_iif7lmfx9ZoWRbVtxJ5ZQJjtqIpZBXsh4V5JadCHNoDkrq84f4hapzlvDQt0LvAT1UCghT9Ws364yHMDKMB92Fmgw3-w8c42lEtvz_T6JexMVEwML5G59KFBcJR2hA4L79y6B-lXFIPsMkFZz-N6alb4yBsjuP95qL6ZzO0xSq2pIW3iAAtUPHAOCczMvWvD3hIACCAjNr7YcOUcnXWhbvfQioznrJj2rG1I13tfZp1WPr-yk5g8poe7RGxx3lCv2r3c6BDSjEWzRRewmUY1efqjsvlBjpaqgnWSOe0tW4g_43dvWuH-__1KSjPfieWOhfL.qmGf7LyCPlSe56xw-uz6XD2cFZLUiXwzoG5P79KIY60&dib_tag=se&keywords=luigi+mansion+3+switch&qid=1739815366&sprefix=luigi%2Caps%2C141&sr=8-1",
      type: "Plateforme Action-Aventure",
      date: DateTime(2019, 10, 31)),
  GameItem(
      title: "Kirby and the Forgotten Land",
      platform: "Nintendo Switch",
      shortDescription:
          "La première aventure en 3D de Kirby, où il explore un monde mystérieux rempli de secrets.",
      image: "assets/images/kirby.jpg",
      price: 44.99,
      link:
          "https://www.amazon.fr/Kirby-monde-oubli%C3%A9-Nintendo-Switch/dp/B09QH87JC3/ref=sr_1_1?crid=2IOFJUYH50XBF&dib=eyJ2IjoiMSJ9.t70Ugk9KUyKAvcJqB_urRpqAGunyyEm-cfVVqfY-Wk9p2H9du6LonqdGu6ANDcdRxFM2rBcg3ncMUNvARg4hwtjXZo_jJXR80Nhh2CuL9gOYyb8im-j7EINmh72Vv4zFaGXa6S3uLEbUJJRq3VRQcrcfIIcvuS1R8Yd2A6r-p7dYvlddKwhdT8uS8pLhAIK53kZrnT4BzaK-j4hs9PxvRKTsK9DDGK4Yfp6X3MeroA8zJL48bXsN8-a6lWCtIeMrEyl74BMcFW5G34uNvAUXdQ.aKVKHDU_queQw-cOhvOfgeoDuwE55NxaskmzLAny0Mg&dib_tag=se&keywords=kirby%2Band%2Bthe%2Bforgotten%2Bland&qid=1739815419&sprefix=kirby%2Band%2Bthe%2B%2Caps%2C120&sr=8-1&th=1",
      type: "Plateforme et Aventure",
      pegi: 7,
      date: DateTime(2022, 3, 25)),
  GameItem(
      title: "Bayonetta 3",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu d'action frénétique où la sorcière Bayonetta affronte des créatures célestes et démoniaques.",
      image: "assets/images/bayonetta.jpg",
      pegi: 16,
      price: 28.86,
      type: "Hack and Slash",
      link:
          "https://www.amazon.fr/Nintendo-Bayonetta-3/dp/B0B6GCS2LV/ref=sr_1_1?crid=1JL00RNVWHE3E&dib=eyJ2IjoiMSJ9.AAz8DhRKm0PsKuKAzvdcvh4sPT_yM_CH8F1tf7LCu-fn2pbHtMAh6NzLTuCNKAoafwMXS5HrilSRY6HzJ_kI_hxNTnmn_FFIMHsfi0IhTZHCajE6ir3fJij-XOWEwPQ0i_gVh62ESXMFLq-0UJ3ghN24McgFPF1vSb8N61F_vj2PEStfirrOiBlx6heKo6FH9GZVXf4p-BJ-uVezB0u_fSef4K73rpQSyMIXl7g-6Rr71CK2LPu5PW2X4XeURyI3XAdv37IKRgWPzkdUEvQzhCGvHzaqv82Ua7Kon9dQg5NWSY0e2BjzMvTAzLGBguurn6RBWAihmNGB9c7_o28nM8UPKlXfz1MKzv8KtW9svhUWC1biN8q2-Yb6i6pJh4I8GxekOQP4qFmzkMMkAJJA_WaWQJ-MH-WBVlnSDDh1Apd0gEFrV4cxer7jVgabFOj8.bEkbVcDTFv9wmZ0J0CBf3M1XJxSwOoDnVvRH-bE30_A&dib_tag=se&keywords=bayonetta+3+switch&qid=1739815512&sprefix=bayon%2Caps%2C183&sr=8-1",
      date: DateTime(2022, 10, 28)),
  GameItem(
      title: "Mario Party Superstars",
      platform: "Nintendo Switch",
      shortDescription:
          "Une compilation des meilleurs mini-jeux et plateaux issus des classiques de la série Mario Party.",
      image: "assets/images/mps.jpg",
      pegi: 3,
      price: 44.00,
      link:
          "https://www.amazon.fr/Mario-Party-Superstars-Nintendo-Switch/dp/B097F5D8Y1/ref=sr_1_1?crid=10XOFYYWRK1N7&dib=eyJ2IjoiMSJ9.6BNTx7O3AnOef79l39evQEZBVWtI8z0rO94VicOWhxkx5aeHNS3RzeH8J_0xM_1XNS36VLaFu0cjPdm97cmpw7Ji9ZwP2R1AJ366IDyo1vUXl-zANzJ7DcPWN-xeFG2ZTJpcy_vsyuGET6fua3WzVKaYQ1JmHov535oRX0fFgk-qtmMVnqs8mZNl-DY2UTdkw4qkcmZ5l5qk0EySsEPASe9h59YCUhcfvTbi_uVjGZq2-eFdce4xDBX-S9RYApFG3JbmTXcq4ZX8aVh0BsCKhe-kpk4h7psjoHoRjFSVUX-nfcYgD2Z6mi_CWPgyHPNOwMRnmNy6Om4Rd7N4i2OAPTcFNpQhNhioE5Mpvi9-DhkEhJezYSje4aghVlZns2bbg09jg1k2ioSCnaRyo0-8SpXJ2reMQvic-_yU4ytPd3tZ6ysPb087lipvWvUYblIJ.pbqpj7YVx7gIU61GQdQT9TS8SfthC0jdvdvOFhC21EQ&dib_tag=se&keywords=mario+party+superstar+switch&qid=1739815616&sprefix=mario+par%2Caps%2C169&sr=8-1",
      type: "Fête et Mini-Jeux",
      date: DateTime(2021, 10, 29)),
  GameItem(
      title: "Donkey Kong Country: Tropical Freeze",
      platform: "Nintendo Switch",
      shortDescription:
          "Un jeu de plateforme exigeant et fun avec des niveaux magnifiquement conçus.",
      image: "assets/images/dk.jpg",
      pegi: 3,
      price: 49.99,
      link:
          "https://www.amazon.fr/Donkey-Kong-Country-Tropical-Freeze/dp/B0798ZPL4W/ref=sr_1_2?crid=1R20B6BZ0PGRK&dib=eyJ2IjoiMSJ9.2iczGsxa0zTo6GBBLQ8jXYJ4GD7bLLRDBBrvUXVsTon9dfr5BnpNKKR0dQswaEMhvqJUegbdm14VYjDO5b-76SYMHXjJHQiwMyUgtAdqutuVMF065dUpoJ9Upg8Yn5shxJv-Ez62q1rW6Yu4iiDkI73zRV5ktd7fls6XcVCY_5iKSkWsZ6YFu_k7aJLEVkliZ4HHPAmlhOPjrOYo9pKymDTO_4pJ4xw4KRP0yzO1o_89rrWmnfvcdh63zvPYRnafD4kiYXD33IOoEgpiYRDwOZeY24FkjUViDH31fh8wOYEGJr87ePk7MTbkVWT7gImdl_tC6oKZpt4ERxmfGQA5SoNEll3K5oz4XEkbKCieexwE7xDWhCYYZeY2nRN55Pxck3XnazGIBUfRXbbWfK15xwtC1ToPl2y45nEYPLIPnZ-POR8fY6hUEBY-hJA5RzLU.wEpgYDkjhDiOaVo813K2nPWh4WlMv5qTMXiHGeprc7k&dib_tag=se&keywords=donkey+kong+switch&qid=1739815681&sprefix=donke%2Caps%2C125&sr=8-2",
      type: "Plateforme 2D",
      date: DateTime(2025, 1, 16)),
];
