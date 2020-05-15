import 'package:flutter/material.dart';

class QuickPlayScreen extends StatefulWidget {
  QuickPlayScreen({Key key}) : super(key: key);

  @override
  _QuickPlayScreenState createState() => _QuickPlayScreenState();
}

class _QuickPlayScreenState extends State<QuickPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quick Quiz"),),
    );
  }
}