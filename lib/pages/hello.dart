import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/22.png',
              height: 350,
              width: 350,
            ),
            SizedBox(height: 20),
            Text(
              'Votre première application pour cultiver votre enfant',
              style: TextStyle(
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 350,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Center(
            child: Text(
              'Commencer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.green.shade400,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
