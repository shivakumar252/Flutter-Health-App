import 'package:flutter/material.dart';

class NewSession extends StatefulWidget {
  @override
  _NewSessionState createState() => _NewSessionState();
}

class _NewSessionState extends State<NewSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Ivysur",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: new Container(
          decoration: new BoxDecoration(color: Colors.cyan),
          child: new Center(
              child: MergeSemantics(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: 180,

                    // child: Card(
                    //   color: Color(0xfffaf5f5),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Container(
                    //         width: MediaQuery.of(context).size.width,
                    //         height: MediaQuery.of(context).size.height * 0.16,
                    //         color: Colors.white,
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: <Widget>[
                    // Text(
                    //   '98',
                    //   style: TextStyle(
                    //     fontFamily: 'Karla',
                    //     fontSize: 60,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color(0xff54c19f),
                    //   ),
                    // ),
                    // Text(
                    //   '/100',
                    //   style: TextStyle(
                    //     fontFamily: 'Karla',
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color(0xff75777d),
                    //   ),
                    // ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   color: Colors.transparent,
                    //   width: MediaQuery.of(context).size.width,
                    //   margin: EdgeInsets.only(top: 7),
                    //   child: Image.asset(
                    //     'images/pouce-ok.png',
                    //     width: 30,
                    //   ),
                    // ),
                    //     ],
                    //   ),
                    // ),
                  ),
                  //code for card 2, i-e: 129pts card
                  SizedBox(
                    height: 550,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 500,
                                  height: 125,
                                  child: Image.network(
                                      "https://images.gameinfo.io/pokemon/256/002-00.png"),
                                ),
                                Text(
                                  'Ivyasur',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Container(
                                  height: 10,
                                ),
                                Text(
                                  "height: 0.90m",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Container(
                                  height: 10,
                                ),
                                Text(
                                  "weight: 65.0kg",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Container(
                                  height: 10,
                                ),
                                Text(
                                  "Types",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Container(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonTheme(
                                      minWidth: 20.0,
                                      height: 10.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.red)),
                                        color: Colors.orangeAccent,
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {},
                                        child: Text(
                                          "Grass",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      minWidth: 20.0,
                                      height: 10.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.red)),
                                        color: Colors.orangeAccent,
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {},
                                        child: Text(
                                          "Poison",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 10,
                                ),
                                Text(
                                  "Weakness",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                Container(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ButtonTheme(
                                      minWidth: 40.0,
                                      height: 20.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.red)),
                                        color: Colors.redAccent,
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {},
                                        child: Text(
                                          "Fire",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      minWidth: 40.0,
                                      height: 20.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.red)),
                                        color: Colors.redAccent,
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {},
                                        child: Text(
                                          "Ice",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      minWidth: 40.0,
                                      height: 20.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.red)),
                                        color: Colors.redAccent,
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {},
                                        child: Text(
                                          "Flying",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      minWidth: 40.0,
                                      height: 20.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.red)),
                                        color: Colors.redAccent,
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {},
                                        child: Text(
                                          "Psychic",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                ),
                                Text("Next Evolution",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  height: 20,
                                ),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)),
                                  color: Colors.green,
                                  padding: EdgeInsets.all(2.0),
                                  onPressed: () {},
                                  child: Text(
                                    "Venasur",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   margin: EdgeInsets.only(top: 2),
                          //   // child: Image.asset(
                          //   //   'images/cadeaux.png',
                          //   //   width: 35,
                          //   // ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
