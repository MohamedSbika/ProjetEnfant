import 'package:flutter/material.dart';

class ClimbingPage extends StatelessWidget {
  const ClimbingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "climbing",
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
                  "assets/images/escalade.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : L'escalade est un sport qui consiste à grimper sur des parois rocheuses ou artificielles en utilisant des techniques de grimpe et d'assurage. Il existe différentes disciplines d'escalade, dont le bloc, la voie et l'escalade de vitesse.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : En escalade de bloc, les grimpeurs tentent de grimper des passages courts et intenses, sans utiliser de corde, sur des structures rocheuses ou des murs artificiels. En escalade de voie, les grimpeurs suivent un itinéraire prédéfini sur une paroi rocheuse ou un mur d'escalade en utilisant des cordes pour assurer leur sécurité. En escalade de vitesse, les grimpeurs concourent pour atteindre le sommet d'une voie le plus rapidement possible. Dans toutes les disciplines, les grimpeurs doivent suivre les règles de sécurité et utiliser les techniques appropriées pour réussir leur ascension.",
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
