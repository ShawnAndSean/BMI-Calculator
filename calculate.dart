import 'dart:math';
class Calculator{
  Calculator({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI (){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }
  String result(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if (_bmi >18.5){
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String message = 'BMI score is affected by both muscles and genetics. It is more important to keep your diet in moderation in accordance to your needs rather than minding the numbers in the scale.';
  String getMeaning(){
   return message;
  }
}