import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ResultScreen.dart';
enum Gender {
  male,
  female,
}

class Testing extends StatefulWidget {
  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  Gender selectGender;
  //TODO Define Variable
  int sliderHeight = 180;
  int sliderWeight = 60;
  int sliderAge = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      //TODO Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //TODO Row 1
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    // colors: maleColor,
                    //TODO Send to Gesture Detector
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    //TODO use Ternary Operator for male and Access "ConstantFile" Functionality
                    colors: selectGender == Gender.male
                        ? activeColor
                        : deActiveColor,
                    //TODO Assigning Text and Icon to Refactored Text and Icon code
                    cardWidget: RepeatTextandIconCode(
                      iconData: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    // colors: femaleColor,
                    //TODO Send to Gesture Detector
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    //TODO use Ternary Operator for female and Access "ConstantFile" Functionality
                    colors: selectGender == Gender.female
                        ? activeColor
                        : deActiveColor,
                    cardWidget: RepeatTextandIconCode(
                      iconData: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          //TODO Row 2
          Expanded(
            child: new RepeatContainerCode(
              colors: Color(0xFF1D1E33),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    //TODO Access "ConstantFile" Functionality
                    style: LabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        //convert int to string as "toString()"
                        sliderHeight.toString(),
                        //TODO Access "ConstantFile" functionality
                        style: NumberStyle,
                      ),
                      Text(
                        'cm',
                        //TODO Access "ConstantFile" functionality
                        style: LabelStyle,
                      ),
                    ],
                  ),
                  //TODO Add Slider
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          //TODO Row 3
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          //TODO Access "ConstantFile" Functionality
                          style: LabelStyle,
                        ),
                        Text(
                          sliderWeight.toString(),
                          //TODO Access "ConstantFile" Functionality
                          style: NumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcons(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  sliderWeight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIcons(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  sliderWeight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          //TODO Access "ConstantFile" Functionality
                          style: LabelStyle,
                        ),
                        Text(
                          sliderAge.toString(),
                          //TODO Access "ConstantFile" Functionality
                          style: NumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcons(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  sliderAge--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIcons(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  sliderAge++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //TODO Row 4 and GestureDetector Container
          GestureDetector(
            onTap: () {
              //TODO here we send height and weight to "CalculatorFile"
              CalculatorStore cal =
                  CalculatorStore(height: sliderHeight, weight: sliderWeight);
              //TODO Navigate to Result Screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmiResult: cal.calculateBMI(),
                    resultCriteria: cal.getResult(),
                    resultDescription: cal.getDescription(),
                  ),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  //TODO Access "ConstantFile" Functionality
                  style: CalculateButtonStyle,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          )
        ],
      ),
    );
  }
}

//TODO we create separate class for round_icon buttons
class RoundIcons extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  RoundIcons({@required this.iconData, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
  
  class CalculatorStore {
  CalculatorStore({@required this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  //TODO Below are Member Functions
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
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


//TODO Initialize const variables "Active and deActive"
const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);
//TODO Initialize const variable "LabelStyle"
const LabelStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);
//TODO Initialize const variable "NumberStyle"
const NumberStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
//TODO Initialize const variable "CalculateButtonStyle"
const CalculateButtonStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
//TODO Initialize "ResultFile" Styles
const ResultTitleStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const ResultTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);
const ResultStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
class RepeatContainerCode extends StatelessWidget {
  // const RepeatContainerCode({
  //   Key key,
  // }) : super(key: key);


  // here we made a constructor that return color and widget of this class
  RepeatContainerCode({@required this.colors, this.cardWidget, this.onPressed});

  // here "final" keyword mean, at runtime we update the property of this class's objects ("colors" and "cardWidget" and "onPressed")
  final Color colors;
  final Widget cardWidget;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
 
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
    
        child: cardWidget,
        decoration: BoxDecoration(
        
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
class RepeatTextandIconCode extends StatelessWidget {
  // const RepeatTextandIconCode({
  //   Key key,
  // }) : super(key: key);

  //TODO Define Constructor
  // here we made a constructor that return icon and label of this class
  RepeatTextandIconCode({@required this.iconData, this.label});
  //TODO Define Variables for Text and Icon
  // here "final" keyword mean, at runtime we update the property of this class's object ("iconData" and "label")
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          //TODO here we use IconData variable's object
          iconData,
          size: 85.0,
        ),
        SizedBox(height: 15.0),
        Text(
          //TODO here we use String variable's object
          label,
          //TODO Access "ConstantFile" Functionality
          style: LabelStyle,
        )
      ],
    );
  }
}