import 'package:flutter/material.dart';

void main() => runApp(VisitingCardApp());

class VisitingCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                  ),
                ),
              ),
              Container(width: double.infinity),
              Container(
                child: Card(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
