import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = -1;
    }
  }

  String getQuestionText() {
    if (isFinished()) {
      return 'Finished!\nTap any button to restart.';
    } else {
      return _questionBank[_questionNumber].questionText;
    }
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == -1) {
      print(_questionNumber);
      print(_questionBank.length - 1);
      print('FINISHED');
      return true;
    } else {
      print(_questionNumber);
      print(_questionBank.length - 1);
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
