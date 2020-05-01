import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher that normal body weight,Overweight and obesity may increase the risk of many health problems, including diabetes, heart disease, and certain cancers ';
    } else if (_bmi > 18.5) {
      return 'You have a normal body Weight,Normal body weight lowering the risk of heart disease, stroke, diabetes, and high blood pressure, it can also lower the risk of many different cancers.';
    } else {
      return 'you have a lower than normal body weight,Not getting enough calories to maintain a healthy weight can make a person feel fatigued. Anemia. A person who is underweight is more likely to have low blood counts, known as anemia, which causes dizziness, headaches, and fatigue';
    }
  }
}
