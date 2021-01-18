import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmi = 0;
  String bmiStatus = "Your Health Status";
  // double _currentSliderValue = 20;
  String image = "";
  String text="";
  void calculateBMI() {
    double height = double.parse(heightController.text);
    double weight = double.parse(weightController.text);
    setState(() {
      this.bmi = 0;
      this.bmiStatus = "";
      this.bmi = weight / pow(height / 100, 2).roundToDouble();
      if (this.bmi < 18.50) {
        this.bmiStatus = "UnderWeight";
        this.image ="https://media.tenor.com/images/d74a3e642b19d4abd37dae6f0e8ce5a4/tenor.gif";
     
    
      } else if (this.bmi >= 18.50 && this.bmi <= 24.99) {
        this.bmiStatus = "Healthy Weight";
        this.image ="https://i.pinimg.com/originals/e3/d0/86/e3d086800546d84d641102cba6fd084a.gif";
     
      } else if (this.bmi >= 25.00 && this.bmi <= 29.99) {
        this.bmiStatus = "Over Weight";
        this.image ="https://media.tenor.com/images/d74a3e642b19d4abd37dae6f0e8ce5a4/tenor.gif";
  
      } else {
        this.bmiStatus = "Obesity";
        this.image ="https://media.tenor.com/images/d74a3e642b19d4abd37dae6f0e8ce5a4/tenor.gif";
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Color(0xFFFF1744),
        ),
        body: Builder(builder: (context)=>Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new SizedBox(
                    width: 150.0,
                    height: 100.0,
                    child: new RaisedButton(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: Colors.redAccent,
                    ),
                  ),
                  new SizedBox(
                    width: 150.0,
                    height: 100.0,
                    child: new RaisedButton(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              Container(
                width: 300,
                height: 75,
                child: Image.network('${this.image}'),
              ),
              // Text(
              //   'HEIGHT',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              // ),
              // Slider(
              //   value: _currentSliderValue,
              //   min: 0,
              //   max: 100,
              //   divisions: 20,
              //   label: _currentSliderValue.round().toString(),
              //   onChanged: (double value) {
              //     setState(() {
              //       _currentSliderValue = value;
              //       print(value);
              //     });
              //   },
              // ),
              Text('BMI Range ${this.bmi.toString()}'),
              Text('${this.bmiStatus}',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter a Body Mass in Kg"),
                  //  controller: bodyWeight,
                  onChanged: (weight) {
                    print("First text field: $weight");
                  },
                  controller: weightController,
                ),
              ),
              Container(
                width:250,
                height:15              
                ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter a Height in m"),
                  //  controller: bodyWeight,
                  onChanged: (height) {
                    print("First text field: $height");
                  },
                  controller: heightController,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                  ),
                  RaisedButton(
                    onPressed: () =>{
                          Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text("this is Your BMI ststus,For better results Please Book a Health Session",style: TextStyle(color:Colors.black,fontWeight:FontWeight.bold),),
                          backgroundColor: Colors.orangeAccent,
                          behavior: SnackBarBehavior.floating,
                        ),
                     
                      ),
                      this.calculateBMI()
                    },
                    child: Text("BMI"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        )
        ),
        );
  }
}
