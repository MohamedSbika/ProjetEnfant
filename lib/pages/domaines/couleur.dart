import 'package:flutter/material.dart';
class CouleurPage extends StatelessWidget {
  const CouleurPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Center(
          child: Text("Les couleurs",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Center(
    child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/red.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("Rouge"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/bleu.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("Bleu"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/vert.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("vert"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/jaune.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("Jaune"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/orange.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("orange"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/violet.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("violet"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/blanc.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("blanc"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/noir.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("noir"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              'assets/images/marron.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Text("marron"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/rose.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Text("rose"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/turquoise.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Text("turquoise"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/or.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Text("Or"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}