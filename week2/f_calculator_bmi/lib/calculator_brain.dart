import 'dart:math';

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
      return 'GENDUT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'KURUS';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Anda Kegendutan perbanyak lah olahraga dan makan secukupnya. jangan lupa berdoa!';
    } else if (_bmi > 18.5) {
      return 'Anda Mempunyai berat badan yang ideal!';
    } else {
      return 'Anda Kurus perbanyak lah makan, jangan pelit-pelit kalau jajan. jangan lupa berdoa!';
    }
  }
}
