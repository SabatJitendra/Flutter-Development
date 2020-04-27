import 'package:flutter/material.dart';

void main() {
  runApp(
    TrainingDayOne(),
  );
}

class TrainingDayOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text('My First child'),
              Row(
                children: <Widget>[
                  Text('Text from row'),
                ],
              ),
              Container(
                child: Text(
                  'wlekjflkf',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
