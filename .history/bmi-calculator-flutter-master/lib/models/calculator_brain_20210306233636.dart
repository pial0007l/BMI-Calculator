import 'dart:math';

enum BodyStatus {
  NORMAL,
  OVERWEIGHT,
  UNDERWEIGHT,
}

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return BodyStatus.OVERWEIGHT.toString();
    } else if (_bmi > 18.5) {
      return BodyStatus.NORMAL.toString();
    } else {
      return BodyStatus.UNDERWEIGHT.toString();
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '';
    } else if (_bmi > 18.5) {
      return BodyStatus.NORMAL.toString();
    } else {
      return BodyStatus.UNDERWEIGHT.toString();
    }
  }
}
