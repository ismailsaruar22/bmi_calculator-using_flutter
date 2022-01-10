import 'dart:math';

class BmiCalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 1;
  BmiCalculatorBrain({required this.height, required this.weight});
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultStatus() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultComment() {
    if (_bmi >= 25) {
      return "You are fat.Go to exercise you bloody moron!";
    } else if (_bmi >= 18.5) {
      return "You are in good condition now.Keep up the good work";
    } else {
      return "You are too skinny. Stop masturbating bro";
    }
  }
}
