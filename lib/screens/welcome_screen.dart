import 'package:flutter/material.dart';
import 'package:quizzler/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("WElcome"),
      // ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              //
              Image.asset("images/pp.png"),
              //
              RaisedButton(
                child: Text("Quest To Knowledge"),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.quest);
                },
              ),
              RaisedButton(
                child: Text("Quick Play"),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.quickPlay);
                },
              ),
              FlatButton(
                child: Text("Options"),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.categories);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
