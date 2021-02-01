import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'DoctorDetails.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
//     return MaterialApp(
// title: (""),
// debugShowCheckedModeBanner: false,
// home:Container(
//         color: Colors.white,
//         child: CustomPaint(
//           painter: CurvePainter(),
//         ),
//     ),

//     );
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: <Widget>[
            ClipPath(
                clipper: WaveClipperOne(flip: false),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      color: Colors.blueGrey,
                      child: Center(
                          // child: Text(
                          //   "Login",
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.white,
                          //     fontSize: 40,
                          //   ),
                          // ),
                          child: Image.network(
                              "https://png.pngtree.com/thumb_back/fw800/back_our/20190625/ourmid/pngtree-simple-and-flat-medical-security-promotion-background-image_261631.jpg")),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Container(
                              child: Text("Choose the doctors you want",
                                  style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))),
                          Container(
                              child: Text(
                                  "you can choose your favourite doctors here",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))),
                          // Container(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //         hintText: "Email or Phone number",
                          //         hintStyle:
                          //             TextStyle(color: Colors.grey[500])),
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //         hintText: "Password",
                          //         hintStyle:
                          //             TextStyle(color: Colors.grey[500])),
                          //   ),
                          // ),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 50,
                      width: 200,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorDetails()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        label: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        icon: Icon(
                          Icons.navigation_sharp,
                          color: Colors.white,
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.red,
                        color: Colors.redAccent,
                      ),
                    ),

                    // Container(
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       gradient: LinearGradient(
                    //           begin: Alignment.centerRight,
                    //           end: Alignment.centerLeft,
                    //           colors: [
                    //             Colors.orange[400],
                    //             Colors.orange[300]
                    //           ])),
                    //   child: Center(
                    //     child: Text(
                    //       "Sign Up",
                    //       style: TextStyle(
                    //           color: Colors.white, fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //     child: Row(
                    //   children: <Widget>[
                    //     Text('Does not have account?'),
                    //     FlatButton(
                    //       textColor: Colors.orange[300],
                    //       child: Text(
                    //         'Sign Up',
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //       onPressed: () {
                    //         //signup screen
                    //       },
                    //     )
                    //   ],
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    // )),
                    // FloatingActionButton(
                    //   onPressed: null,
                    //   backgroundColor: Colors.blueAccent,
                    //   child: Text(
                    //     "f",
                    //     style: TextStyle(color: Colors.white, fontSize: 30.0),
                    //   ),
                    // )
                  ],
                ))
          ])),
        ));
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.orangeAccent;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.15);
    path.lineTo(size.width, 0.25);
    path.lineTo(0, 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
