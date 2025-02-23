import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Développé par Guillaume FOISSY",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ));
  }
}
