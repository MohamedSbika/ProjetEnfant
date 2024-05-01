import 'package:flutter/material.dart';

class NatationPage extends StatelessWidget {
  const NatationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "natation",
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
                  "assets/images/la-natation.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  "Description : La natation est un sport individuel ou en équipe qui se pratique dans l'eau. Les nageurs utilisent différentes techniques de nage pour parcourir une certaine distance dans la piscine, la mer ou un autre plan d'eau.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Règles du jeu : Les nageurs doivent suivre les règles spécifiques à chaque style de nage, comme la brasse, le crawl, le dos crawlé et le papillon. Les compétitions de natation comprennent des épreuves de sprint, de demi-fond et de fond.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Bienfaits pour la santé : La natation renforce les muscles, améliore la capacité cardiorespiratoire, développe la coordination et favorise la relaxation.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Astuces de nage : Techniques de respiration, mouvements de bras, de jambes et de rotation du corps pour chaque style de nage.",
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
