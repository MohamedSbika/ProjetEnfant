import 'package:flutter/material.dart';

class FootballPage extends StatelessWidget {
  const FootballPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "Football",
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
                  "assets/images/match-de-football.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : Le football, également appelé soccer dans certains pays, est un sport d'équipe populaire dans lequel deux équipes de onze joueurs s'affrontent sur un terrain rectangulaire. L'objectif du jeu est de marquer des buts en faisant passer le ballon dans le but adverse, situé à l'extrémité opposée du terrain.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les joueurs peuvent utiliser toutes les parties de leur corps, à l'exception des bras et des mains, pour manipuler le ballon. Un match se compose de deux mi-temps de 45 minutes chacune, avec une pause à la mi-temps.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : Le football améliore l'endurance, la force, la coordination, l'agilité et favorise le travail d'équipe et la discipline.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Astuces de jeu : Techniques de dribble, de passe, de tir, de marquage et de positionnement sur le terrain.",
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
