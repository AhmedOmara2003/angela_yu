// this is the abstraction technique

import 'package:angela_yu/1.Quizzler/question_model.dart';

class QuizBrain {
  int questionNumber = 0;

  final List<QuestionModel> _questionModel = [
    QuestionModel(
        text: 'The Earth is the fourth planet from the Sun', answers: false),
    QuestionModel(text: 'The chemical symbol for gold is Au', answers: true),
    QuestionModel(
        text: 'Shakespeare wrote "To Kill a Mockingbird.', answers: false),
    QuestionModel(text: 'The capital of Australia is Sydney.', answers: false),
    QuestionModel(text: 'Light travels faster than sound.', answers: true),
    QuestionModel(text: 'Humans have four lungs. ', answers: false),
    QuestionModel(text: 'An octopus has three hearts.', answers: true),
    QuestionModel(text: 'The square root of 81 is 9.', answers: true),
    QuestionModel(text: 'The square root of 81 is 9.', answers: true),
    QuestionModel(
        text: 'Mount Everest is the tallest mountain in the world.',
        answers: true),
  ];

//Encapsulation technique
  String getQuizText() {
   return _questionModel[questionNumber].text;
  }

  bool getQuizAnswer() {
   return _questionModel[questionNumber].answers;
  }

  void nextQuestion(){
    // 10>0 , 10>9+1
    if(_questionModel.length>questionNumber+1){
      questionNumber++;
      print(_questionModel.length);
      print(questionNumber);
    }
  }


  void reset(){
    questionNumber=0;
  }
}
