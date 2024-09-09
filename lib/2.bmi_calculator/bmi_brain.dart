import 'dart:math';

class BmiBrain {
  final int height;
  final int weight;

  BmiBrain({ required this.height, required this.weight});

  double? _bmi;

  String bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  getTextResult() {
    if (_bmi! > 20.0) {
      return 'weight';
    } else if (_bmi! < 20.0 && _bmi! > 10.0) {
      return 'normal';
    } else {
      return 'under weight';
    }
  }

  getTooTextResult() {
    if (_bmi! > 20.0) {
      return 'weight hviu uytiuft tif i';
    } else if (_bmi! < 20.0 && _bmi! > 10.0) {
      return 'normal tuitfui tyiyd i ';
    } else {
      return 'under weightyu tf uif fi';
    }
  }
}
