import 'package:flutter/material.dart';

class Category {
  String name;
  Category(this.name);
}

class Categories extends ChangeNotifier {
  List<Category> _categories = [
    Category("Actualités"),
    Category("Arts"),
    Category("BD"),
    Category("Cinéma"),
    Category("Cuisine"),
    Category("Culture générale"),
    Category("Economie et finances"),
    Category("Esotérisme"),
    Category("Géographie"),
    Category("Histoire"),
    Category("Jeux et loisirs"),
    Category("Littérature"),
    Category("Mathématiques"),
    Category("Mode"),
    Category("Monde animal"),
    Category("Musique"),
    Category("Non classé"),
    Category("People"),
    Category("Politique"),
    Category("Publicité"),
    Category("Quizz de nos internautes"),
    Category("Régime et minceur"),
    Category("Sciences et nature"),
    Category("Sports"),
    Category("Télévision"),
  ];

  List<Category> get items {
    return [..._categories];
  }
}
