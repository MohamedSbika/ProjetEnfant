import 'package:flutter/material.dart';
import 'package:projetenfant/authentification/login.dart';
import 'package:projetenfant/authentification/signup.dart';
import 'package:projetenfant/pages/domaines/calculatrice.dart';
import 'package:projetenfant/pages/domaines/draw.dart';
import 'package:projetenfant/pages/domaines/sports/badminton.dart';
import 'package:projetenfant/pages/domaines/sports/basketball.dart';
import 'package:projetenfant/pages/domaines/sports/climbing.dart';
import 'package:projetenfant/pages/domaines/sports/fitness.dart';
import 'package:projetenfant/pages/domaines/sports/football.dart';
import 'package:projetenfant/pages/domaines/sports/natation.dart';
import 'package:projetenfant/pages/domaines/sports/tennis-table.dart';
import 'package:projetenfant/pages/domaines/sports/volleyball.dart';
import 'package:projetenfant/pages/domaines/todo.dart';
import 'package:projetenfant/pages/hello.dart';
import 'package:projetenfant/pages/home.dart';
import 'package:projetenfant/pages/domaines/sport.dart';
import 'package:projetenfant/pages/domaines/couleur.dart';
import 'package:projetenfant/pages/domaines/histoire.dart';
import 'package:projetenfant/pages/domaines/math.dart';
import 'package:projetenfant/pages/domaines/science.dart';
import 'package:projetenfant/pages/domaines/pays.dart';
import 'package:sqflite_common/sqflite.dart';
//import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  // sqfliteFfiInit();
  // databaseFactory = databaseFactoryFfi;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        "/home":(context) {
          return HomePage();
        },
        "/hello":(context) => HelloPage(),
        "/sports":(context) => SportPage(),
        "/couleur":(context) => CouleurPage(),
        "/histoire":(context) => HistoirePage(),
        "/math":(context) => MathPage(),
        "/science":(context) => SciencePage(),
        "/football":(context) => FootballPage(),
        "/badminton":(context) => BadmintonPage(),
        "/basketball":(context) => BasketballPage(),
        "/climbing":(context) => ClimbingPage(),
        "/fitness":(context) => FitnessPage(),
        "/natation":(context) => NatationPage(),
        "/tennis":(context) => TennisPage(),
        "/volley":(context) => VolleyPage(),
        "/calcul":(context) => Calculator(),
        "/pays":(context) => CountryListPage(),
        "/draw":(context) => DrawingBoard(),
        "/todo":(context) => Todo(),

        "/login":(context) => LoginPage(),
        "/signup":(context) => SignupPage(),



      },
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: "/login",
    );
  }
}
