


import 'package:flutter/foundation.dart';
import 'dart:math';
enum Gender {
  male,
  female,
}
class  CalculatorStore extends ChangeNotifier{
  CalculatorStore({@required this.height, this.weight});
   int height;
   int weight;
  double _bmi;
  int sliderAge;
  Gender selectGender;
    int sliderHeight;
  //TODO Below are Member Functions
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
   
   void incrementWeight(){
     weight++;
   }
   void decrementWeight(){
     weight--;
   }
   void incrementAge(){
   sliderAge++;
   }
   void decrementAge(){
   sliderAge--;
   }
   void male(){
 selectGender = Gender.male;
   }
   void female(){
selectGender = Gender.female;
   }
   void roundOff(newValue){
     sliderHeight = newValue.round();
   }
  //result method
  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  //description method
  String getDescription() {
    if (_bmi >= 25) {
      return 'You have a higher than body normal weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Work!';
    } else {
      return 'You have a lower than body weight.You can eat a bit more!';
    }
  }
}