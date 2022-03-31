import 'dart:math';


class CalculateBMI {
  final int height;
  final int weight;
  double _bmi;
  
  //Constructor to store bmi object values
  CalculateBMI({this.height, this.weight});

  //Use basic BMI formula
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  //Determine health category via _bmi score
  String getLevel() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  //Get te interpretation of the BMI score
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
