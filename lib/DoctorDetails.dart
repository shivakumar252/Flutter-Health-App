import 'package:flutter/material.dart';

import 'AboutDoctors.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  String doctor1 = "Dr.Anson Moire";
  String doctor2 = "Dr.Anson Moire";
  String doctor3 = "Dr.Anson Moire";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.short_text,
            size: 30,
            color: Colors.black,
          ),
          actions: <Widget>[
            // Icon(
            //   Icons.notifications_none,
            //   size: 30,
            //   color: Colors.greenAccent,
            // ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Container(
                // height: 40,
                // width: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Image.network(
                    "https://i.pinimg.com/originals/76/80/4f/76804f67ba38f85e4802d250e5b15504.jpg"),
              ),
            )
          ],
        ),
        body: Column(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 10,
              ),
              Text("Find Your Desired Doctor",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold)),
      
            ],
          ),
          Container(
            height: 55,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(13)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.withOpacity(.3),
                  blurRadius: 15,
                  offset: Offset(5, 5),
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                border: InputBorder.none,
                hintText: "Search For Doctors",
                hintStyle:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                suffixIcon: SizedBox(
                  height: 100,
                  width: 70,
                  child: RaisedButton.icon(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    label: Text(
                      '',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.redAccent,
                  ),
                ),
                // SizedBox(
                //     width: 50, child: Icon(Icons.search, color: Colors.purple)),
              ),
            ),
          ),
          Row(children: [
            Text("Categories",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black)),
          ]),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 120,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 110,
                          height: 137,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Dental\nSurgeon',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(75, 127, 252, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network(
                            "https://st2.depositphotos.com/8511412/11363/v/950/depositphotos_113638526-stock-illustration-tooth-icon-vector-tooth-icon.jpg",
                            scale: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 160,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 110,
                          height: 137,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Heart\nSurgeon',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(75, 127, 252, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network(
                            "https://cdn3.f-cdn.com/contestentries/956697/13573594/58b02d945598b_thumb900.jpg",
                            scale: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 160,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 110,
                          height: 137,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Eye\nSurgeon',
                              style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(75, 127, 252, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network(
                            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX33826754.jpg",
                            scale: 5.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 160,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 110,
                          height: 137,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Eye\nSurgeon',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(75, 127, 252, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network(
                            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX33826754.jpg",
                            scale: 5.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 160,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 110,
                          height: 137,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Eye\nSurgeon',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(75, 127, 252, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network(
                            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX33826754.jpg",
                            scale: 5.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(children: [
            
            Text(
              "Top Doctors",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.black),
            ),
          ]),
          Container(
              height:20,
            ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 250, // constrain height
                child: ListView(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topLeft: Radius.circular(25)),
                        ),
                        // child: new Stack(
                        //   children: <Widget>[
                        //     Card(
                        //       child: Container(
                        //         height: 100.0,
                        //         color: Colors.white10,
                        //       ),
                        //     ),
                        // FractionalTranslation(
                        //   translation: Offset(0.0, -0.4),
                        //   child: Align(
                        //     child: CircleAvatar(
                        //       radius: 25.0,
                        //       child: Text("A"),
                        //     ),
                        //     alignment: FractionalOffset(0.5, 0.0),
                        //   ),
                        // ),margin: EdgeInsets.all(20),

                        child: ListTile(
                          title: Text(
                            "Dr.Anson Moire",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Specialist in Heart cardilogist",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0)),
                          leading: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: Container(
                              // height: 40,
                              // width: 40,
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: Image.network(
                                  "https://i.pinimg.com/originals/76/80/4f/76804f67ba38f85e4802d250e5b15504.jpg"),
                            ),
                          ),
                          trailing: Icon(Icons.navigate_next_sharp),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AboutDoctor(this.doctor1)));
                          },
                        )),
                    Container(
                      height: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topLeft: Radius.circular(25)),
                        ),

                        // FractionalTranslation(
                        //   translation: Offset(0.0, -0.4),
                        //   child: Align(
                        //     child: CircleAvatar(
                        //       radius: 25.0,
                        //       child: Text("A"),
                        //     ),
                        //     alignment: FractionalOffset(0.5, 0.0),
                        //   ),
                        // ),Co
                        child: ListTile(
                          title: Text(
                            "Dr.Kaplan Charles",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Specialist in dental technicians",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0)),
                          leading: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: Container(
                              // height: 40,
                              // width: 40,
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqvJzKKduUH-fqgZf937DKSq7B7QoBiMENYg&usqp=CAU"),
                            ),
                          ),
                          trailing: Icon(Icons.navigate_next_sharp),
                        )),
                    Container(
                      height: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topLeft: Radius.circular(25)),
                        ),
                        // FractionalTranslation(
                        //   translation: Offset(0.0, -0.4),
                        //   child: Align(
                        //     child: CircleAvatar(
                        //       radius: 25.0,
                        //       child: Text("A"),
                        //     ),
                        //     alignment: FractionalOffset(0.5, 0.0),
                        //   ),
                        // ),
                        child: ListTile(
                          title: Text(
                            "Dr.Sam John",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Specialist in neurologist",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0)),
                          leading: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: Container(
                              // height: 40,
                              // width: 40,
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtT0XdSn7FKJf2NUEASBKR3j9cQbbhI__dfw&usqp=CAU"),
                            ),
                          ),
                          trailing: Icon(Icons.navigate_next_sharp),
                        )),
                    Container(
                      height: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topLeft: Radius.circular(25)),
                        ),

                        // FractionalTranslation(
                        //   translation: Offset(0.0, -0.4),
                        //   child: Align(
                        //     child: CircleAvatar(
                        //       radius: 25.0,
                        //       child: Text("A"),
                        //     ),
                        //     alignment: FractionalOffset(0.5, 0.0),
                        //   ),
                        // ),Co
                        child: ListTile(
                          title: Text(
                            "Dr.Francis Lites",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Specialist in dental technicians",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0)),
                          leading: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: Container(
                              // height: 40,
                              // width: 40,
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqvJzKKduUH-fqgZf937DKSq7B7QoBiMENYg&usqp=CAU"),
                            ),
                          ),
                          trailing: Icon(Icons.navigate_next_sharp),
                        )),
                  ],
                ),
              )
            ],
          )
        ]));
  }
}
