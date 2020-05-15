import 'package:flutter/cupertino.dart';
import 'package:quizzler/screens/categories_screen.dart';
import 'package:quizzler/screens/home_screen.dart';
import 'package:quizzler/screens/profile_screen.dart';
import 'package:quizzler/screens/quest_screen.dart';
import 'package:quizzler/screens/quick_play_screen.dart';
import 'package:quizzler/screens/welcome_screen.dart';

class Routes {
  static const welcome = "/welcome";
  static const home = "/home";
  static const quest = "/quest";
  static const quickPlay = "/quickPlay";
  static const questLevel = "/questLevel";
  static const categories = "/categories";
  static const quizzes = "/quizzes";
  static const profile = "/profile";


  static Map<String, WidgetBuilder> routes = {
    welcome: (ctx) => WelcomeScreen(),
    home: (ctx) => HomeScreen(),
    categories: (ctx) => CategoriesScreen(),
    profile: (ctx) => ProfileScreen(),
    quest: (ctx) => QuestScreen(),
    quickPlay: (ctx) => QuickPlayScreen(),
  };

  // 
  
}
