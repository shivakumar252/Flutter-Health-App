import 'package:flutter/material.dart';
import 'testing.dart';

class ResultScreen extends StatelessWidget {
  //TODO here variables are define
  final bmiResult;
  final resultCriteria;
  final resultDescription;
  ResultScreen(
      {@required this.bmiResult, this.resultCriteria, this.resultDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //TODO Row 1
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result...',
                  //TODO Access "ConstantFile" Functionality
                  style: ResultTitleStyle,
                ),
              ),
            ),
          ),
          //TODO Row 2
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultCriteria.toUpperCase(),
                    //TODO Access "ConstantFile" Functionality
                    style: ResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    //TODO Access "ConstantFile" Functionality
                    style: ResultStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    resultDescription,
                    //TODO Access "ConstantFile" Functionality
                    style: LabelStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          //TODO Row 3
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Testing()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Again Calculate',
                    //TODO Access "ConstantFile" Functionality
                    style: CalculateButtonStyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
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

  //TODO Define Constructor
  // here we made a constructor that return color and widget of this class
  RepeatContainerCode({@required this.colors, this.cardWidget, this.onPressed});
  //TODO Define Variables for Container Code
  // here "final" keyword mean, at runtime we update the property of this class's objects ("colors" and "cardWidget" and "onPressed")
  final Color colors;
  final Widget cardWidget;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    //TODO place container in Gesture Detector
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        //TODO here we use Widget variable's object
        child: cardWidget,
        decoration: BoxDecoration(
          //TODO here we use Color variable's object
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}