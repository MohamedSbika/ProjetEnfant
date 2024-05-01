import 'package:flutter/material.dart';
class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Center(
          child: Text(
            "les Sports",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/football');
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/football.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("Football"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/badminton');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/badminton.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("badminton"),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/basketball');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/basketball-ball-variant.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("basketball"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/climbing');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/climbing.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("climbing"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                  ],
                ),
                SizedBox(height: 100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/fitness');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/fitness.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("gymnastique"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/natation');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/swimming.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("natation"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                  ],
                ),
                SizedBox(height: 100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/tennis');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/table-tennis.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("tennis-table"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/volley');

                        },
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/volleyball.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text("volleyball"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

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