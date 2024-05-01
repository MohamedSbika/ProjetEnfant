import 'package:flutter/material.dart';

class BasketballPage extends StatelessWidget {
  const BasketballPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "basketball",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/basketball.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : Le basketball est un sport dynamique qui se joue avec deux équipes de cinq joueurs sur un terrain rectangulaire avec des paniers de chaque côté. Le but est de marquer des points en lançant le ballon dans le panier de l'équipe adverse.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les joueurs peuvent dribbler, passer, tirer et défendre pour obtenir la possession du ballon et marquer des paniers. Un match est composé de quatre quart-temps de 10 minutes chacun.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : Le basketball améliore la coordination, le saut, l'endurance, la vitesse et favorise le développement musculaire.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Astuces de jeu : Techniques de tir, de dribble, de passe, de défense et de mouvement sans ballon.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
