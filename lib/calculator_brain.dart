import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return 'OVERWEIGHT';
    else if (_bmi < 25 && _bmi > 20)
      return 'FIT WEIGHT';
    else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi > 25)
      return 'Looks like you consume more calories. Eat less and exercise more';
    else if (_bmi < 25 && _bmi > 20)
      return 'You got a nice weight buddy, build some muscles now and reach 1 step closer to a perfect physique';
    else
      return 'Why do you hate food?';
  }
}
