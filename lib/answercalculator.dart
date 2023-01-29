import 'dart:math';

class AnswerCalculator {
  AnswerCalculator({this.height, this.weight});
  final height;
  final weight;

  late double _bmi;

  String answer() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String message() {
    if (_bmi >= 25) {
      return 'Your weight is higher than normal my friend, try exercising maybe!';
    } else if (_bmi > 18.5) {
      return 'Your BMI result is good, Keep it up, keep eating healthy';
    } else {
      return 'Your weight is lower than normal my friend, try eating more maybe!';
    }
  }
}
