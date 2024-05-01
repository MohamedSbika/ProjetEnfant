import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Center(
          child: Text("Choisissez votre domaine d'intérêt",
            style : TextStyle(
              color: Colors.white ,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/tools.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/calcul');
                          },
                          icon: Icon(Icons.calculate),
                          label: Text("Calculatrice"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/couleur.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/couleur');
                          },
                          icon: Icon(Icons.color_lens),
                          label: Text("Couleur"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/palette.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/draw');
                          },
                          icon: Icon(Icons.draw),
                          label: Text("dessiner"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/todo.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/todo');

                          },
                          icon: Icon(Icons.view_agenda),
                          label: Text("To Do List"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/la-geographie.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/pays');

                          },
                          icon: Icon(Icons.flag),
                          label: Text("pays et Drapeaux"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/sports.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sports');
                          },
                          icon: Icon(Icons.sports),
                          label: Text("Sport"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
