import 'package:flutter/material.dart';
import 'package:quizzler/widgets/main_drawer.dart';

import '../models/quizz.dart';

Quizz quizz = Quizz();

class QuizzScreen extends StatefulWidget {
  QuizzScreen({Key key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  List<Icon> scoreKeeper = [
    // Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
  ];
  int correctCount = 0;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizz.getCorrectAnswer();

    if (correctAnswer == userPickedAnswer) {
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      correctCount++;
    } else
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    if (quizz.noQuestionLeft()) {
      showDialog(
          context: context,
          child: AlertDialog(
            content: Container(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Quizz Terminated",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("You found $correctCount/${quizz.questionCount}"),
                  ],
                ),
              ),
            ),
            actions: [
              FlatButton(
                child: Text("Reprendre"),
                onPressed: () {
                  // reset the same quizz
                  Navigator.of(context).pop();
                  setState(() {
                    quizz.resetQuizz();
                    scoreKeeper = [];
                    correctCount = 0;
                  });
                },
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  // quit current quizz
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
    }
    setState(() {
      quizz.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text("Theme"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              // padding: EdgeInsets.all(10),
              child: Text(
                "Left: ${quizz.questionCount - scoreKeeper.length}",
              ),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      // 'This is where the question text will go.',
                      quizz.getQuestionTExt(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              //Add a Row here as your score keeper
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: scoreKeeper),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      checkAnswer(true);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      //The user picked false.
                      checkAnswer(false);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
