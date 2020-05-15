import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzler/routes.dart';
import 'package:quizzler/screens/onbording_screen.dart';
import 'package:quizzler/screens/welcome_screen.dart';

import 'models/category.dart';
// import '';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.grey[900],
        ),
        home: WelcomeScreen(),
        routes: Routes.routes,
      
    );
  }
}
