import 'package:flutter/material.dart';
import 'package:training3/question_repo.dart';

void main() => runApp(QuizBank());

class QuizBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('QUIZ BANK'),
          ),
        ),
        body: QuestionBank(),
      ),
    );
  }
}

class QuestionBank extends StatefulWidget {
  @override
  _QuestionBankState createState() => _QuestionBankState();
}

class _QuestionBankState extends State<QuestionBank> {
  final QuestionRepo questions = QuestionRepo();

  @override
  Widget build(BuildContext context) {
    List<Icon> userAnswers = [
      Icon(
        Icons.close,
        color: Colors.red,
      ),
      Icon(
        Icons.check,
        color: Colors.green,
      )
    ];

    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Center(
              child: Text(
                questions.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 20.0),
              ),
            ),
          ),
        ),
        Container(
          height: 150.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomButton(Colors.red, Colors.white, () {
                    setState(() {
                      questions.nextQuestion();
                    });
                  }, 'Previous'),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomButton(Colors.blue, Colors.white, () {
                    setState(() {
                      questions.nextQuestion();
                    });
                  }, 'Next'),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: userAnswers,
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color buttonTextColor;
  final Function onButtonPressed;
  final String buttonText;

  CustomButton(this.backgroundColor, this.buttonTextColor, this.onButtonPressed,
      this.buttonText);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: this.backgroundColor,
      textColor: this.buttonTextColor,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(20.0),
      splashColor: Colors.blueAccent,
      onPressed: this.onButtonPressed,
      child: Text(
        this.buttonText,
        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
