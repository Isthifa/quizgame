import 'question.dart';
class QuizBrain{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question('in an instance method or a constructor, "this" is a reference to the current object.',true),
    Question('Garbage Collection is manual process', false),
    Question('Constructor overloading is not possible in Java', false),
    Question('Assignment operator is evaluated Left to Right', false),
    Question('All binary operators except for the assignment operators are evaluated from Left to Right', true),
    Question('ava programming is not statically-typed, means all variables should not first be declared before they can be used', false),
    Question('Interfaces can be instantiated', false),
    Question('A .class file contains bytecodes?', true),
    Question('Java technology is both a programming language and a platform', true),
  ];
  void nextQuestion()
  {
    if(_questionNumber < _questionBank.length-1)
      {
        _questionNumber++;
      }
  }
  String getQuestionText()
  {
    return _questionBank[_questionNumber].questionText as String;
  }
  bool? getQuestionAnswer()
  {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool? isFinished()
  {
    if(_questionNumber>=_questionBank.length-1)
      {
        return true;
      }
    else
      {
        return false;
      }
  }
  void reset()
  {
    _questionNumber=-1;
  }
}