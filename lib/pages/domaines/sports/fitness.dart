import 'package:flutter/material.dart';

class FitnessPage extends StatelessWidget {
  const FitnessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "Gymnastique",
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
                  "assets/images/ballon-de-gymnastique.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : La gymnastique artistique est un sport qui combine la force, la souplesse, l'équilibre, la grâce et la coordination. Les gymnastes exécutent une série de mouvements acrobatiques et de routines chorégraphiées sur différents appareils.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Appareils : Les appareils comprennent le sol, les barres asymétriques, la poutre et le cheval d'arçons pour les hommes, et la poutre et le saut pour les femmes.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les gymnastes sont jugés sur l'exécution technique, la difficulté des mouvements et la qualité artistique de leur performance.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : La gymnastique artistique améliore la force, la flexibilité, la coordination, l'équilibre, la discipline et la confiance en soi.",
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
