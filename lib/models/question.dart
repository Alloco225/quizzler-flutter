class Question {
  String id;
  String category;
  String type;
  String difficulty;
  String question;

  String correctAnswer;
  List<String> incorrectAnswers;
  
  String questionText;
  bool questionAnswer;

  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}
