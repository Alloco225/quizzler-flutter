import 'package:flutter/material.dart';

class QuestScreen extends StatefulWidget {
  QuestScreen({Key key}) : super(key: key);

  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 1,
        ),
        children: [
          Container(
            child: Card(
              child: Text("1"),
            ),
          ),
        ],
      ),
    );
  }
}
