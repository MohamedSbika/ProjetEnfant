import 'package:flutter/material.dart';

class BadmintonPage extends StatelessWidget {
  const BadmintonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "badminton",
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
                  "assets/images/ba.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : Le badminton est un sport de raquette qui se joue avec un volant et des raquettes légères. Les joueurs s'affrontent sur un court rectangulaire avec un filet au milieu.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les joueurs doivent frapper le volant par-dessus le filet et le faire atterrir dans le camp adverse. Le badminton peut être joué en simple (un contre un) ou en double (deux contre deux).",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : Le badminton améliore la coordination, la réactivité, la vitesse, l'endurance et favorise la santé cardiovasculaire.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Astuces de jeu : Techniques de service, de smash, de lob, de drop et de déplacement sur le court.",
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
