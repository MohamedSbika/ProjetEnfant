import 'package:flutter/material.dart';

class TennisPage extends StatelessWidget {
  const TennisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "tennis-table",
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
                  "assets/images/ping-pong.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : Aussi connu sous le nom de ping-pong, le tennis de table est un sport de raquette qui se joue sur une table divisée par un filet. Les joueurs utilisent des raquettes pour frapper une petite balle en caoutchouc d'un côté à l'autre de la table.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les joueurs doivent faire rebondir la balle sur la table sans qu'elle touche le filet et atterrir dans le camp adverse. Un match se joue en plusieurs manches, avec un certain nombre de points pour gagner chaque manche.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : Le tennis de table améliore la coordination œil-main, la réflexion rapide, la concentration et la réactivité.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Astuces de jeu : Techniques de service, de coup droit, de revers, de smash et de placement sur la table.",
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
