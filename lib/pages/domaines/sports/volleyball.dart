import 'package:flutter/material.dart';

class VolleyPage extends StatelessWidget {
  const VolleyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "volleyball",
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
                  "assets/images/volley-ball.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : Le volley-ball est un sport d'équipe qui se joue avec six joueurs de chaque côté d'un filet. L'objectif est de faire passer le ballon au-dessus du filet et de le faire toucher le sol dans le camp adverse pour marquer des points.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les équipes ont trois touches pour renvoyer le ballon de l'autre côté du filet, en utilisant des passes, des attaques et des blocs. Un match se joue en plusieurs sets, avec un certain nombre de points pour gagner chaque set.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : Le volley-ball améliore la coordination, la réactivité, l'endurance, la force et favorise le travail d'équipe.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Astuces de jeu : Techniques de service, de passe, d'attaque, de blocage et de défense.",
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
