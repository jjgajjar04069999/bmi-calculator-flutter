import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int? height;
  final int? weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have an higher than normal body weight. Try to excercise more!';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good Job maintaining it!';
    } else {
      return 'You have an lower than normal body weight. Try to eat more!';
    }
  }
}
