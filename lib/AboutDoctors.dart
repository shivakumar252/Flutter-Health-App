import 'package:flutter/material.dart';

class AboutDoctor extends StatefulWidget {
  String doctor1;
  AboutDoctor(this.doctor1);
  @override
  _AboutDoctorState createState() => _AboutDoctorState(this.doctor1);
}

class _AboutDoctorState extends State<AboutDoctor> {
  _AboutDoctorState(this.doctor1);
  String doctor1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Image.network(
                "https://s3.envato.com/files/160537326/Preview%20Image.jpg"),
            DraggableScrollableSheet(
              maxChildSize: .8,
              initialChildSize: .6,
              minChildSize: .6,
              builder: (context, scrollController) {
                return Container(
                  height: 100,
                  padding: EdgeInsets.only(
                      left: 19,
                      right: 19,
                      top: 16), //symmetric(horizontal: 19, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "$doctor1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.check_circle,
                                  size: 18,
                                  color: Theme.of(context).primaryColor),
                              Spacer(),
                              // RatingStar(
                              //   rating: model.rating,
                              // )
                            ],
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Row(children: [
                                Text("Heart specialist",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                        color: Colors.black)),
                              ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withAlpha(150)),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green[50]),
                                    child: Icon(
                                      Icons.chat_bubble,
                                      color: Colors.amber.withAlpha(150),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.red[200]),
                                    child: Icon(
                                      Icons.video_call,
                                      color: Colors.pink,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // subtitle: Text("Heart Specialist",
                          //     style: TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 14.0,
                          //         fontWeight: FontWeight.bold)),

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
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: <Widget>[
                        //     Container(
                        //       height: 45,
                        //       width: 45,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(10),
                        //           color: Colors.grey.withAlpha(150)),
                        //       child: Icon(
                        //         Icons.call,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     Container(
                        //       height: 45,
                        //       width: 45,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(10),
                        //           color: Colors.amber.withAlpha(150)),
                        //       child: Icon(
                        //         Icons.chat_bubble,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     FlatButton(
                        //         color: Theme.of(context).primaryColor,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(10)),
                        //         onPressed: () {},
                        //         child: Text("Make an appointment")),
                        //   ],
                        // ),
                        // Divider(
                        //   thickness: .3,
                        //   color: Colors.grey,
                        // ),
                        Row(
                          children: <Widget>[
                            // ProgressWidget(
                            //     value: model.goodReviews,
                            //     totalValue: 100,
                            //     activeColor: Colors.pinkAccent,
                            //     backgroundColor:
                            //         Colors.grey.withOpacity(.3),
                            //     title: "Good Review",
                            //     durationTime: 500),
                            // ProgressWidget(
                            //     value: model.totalScore,
                            //     totalValue: 100,
                            //     activeColor: LightColor.purpleLight,
                            //     backgroundColor:
                            //         LightColor.grey.withOpacity(.3),
                            //     title: "Total Score",
                            //     durationTime: 300),
                            // ProgressWidget(
                            //     value: model.satisfaction,
                            //     totalValue: 100,
                            //     activeColor: LightColor.purple,
                            //     backgroundColor:
                            //         LightColor.grey.withOpacity(.3),
                            //     title: "Satisfaction",
                            //     durationTime: 800),
                          ],
                        ),
                        Divider(
                          thickness: .3,
                          color: Colors.grey,
                        ),
                        Text(
                          "About Doctor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.black),
                        ),
                        Container(
                          height: 10,
                        ),
                        Text(
                          "Dr.steila is the top most surgeon in the flower Hospital,she has done 100 successful surgeries with in past 3 years.She has acheived several awards for her wonderful in her own field.She's available for private consultation for given schedules.",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.normal),
                        ),
                        Container(
                          height: 10,
                        ),
                        Row(children: [
                          Text(
                            "Upcoming Schedules",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black),
                          ),
                        ]),
                        Container(
                          height: 10,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 300, // constrain height
                              child: ListView(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          topLeft: Radius.circular(25)),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        "Consultation",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("Sunday-9am-11am",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w800)),
                                      leading: ClipRRect(
                                        // borderRadius:
                                        //     BorderRadius.all(Radius.circular(100)),
                                        child: Container(
                                          // height: 40,
                                          // width: 40,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .backgroundColor,
                                          ),
                                          child: Image.network(
                                              "https://cdn5.vectorstock.com/i/1000x1000/18/74/april-25-calendar-icon-flat-vector-11871874.jpg"),
                                        ),
                                      ),
                                      trailing: Icon(Icons.navigate_next_sharp),
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AboutDoctor()));
                                      },
                                    ),
                                  ),
                                  Container(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green[50],
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          topLeft: Radius.circular(25)),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        "Consultation",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("Monday-9am-11am",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w800)),
                                      leading: ClipRRect(
                                        // borderRadius:
                                        //     BorderRadius.all(Radius.circular(100)),
                                        child: Container(
                                          // height: 40,
                                          // width: 40,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .backgroundColor,
                                          ),
                                          child: Image.network(
                                              "https://image.shutterstock.com/image-vector/april-26-calendar-iconvector-illustrationflat-260nw-522172288.jpg"),
                                        ),
                                      ),
                                      trailing: Icon(Icons.navigate_next_sharp),
                                    ),
                                  ),
                                  Container(height: 10),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange[50],
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                            bottomLeft: Radius.circular(25),
                                            topLeft: Radius.circular(25)),
                                      ),
                                      child: ListTile(
                                        title: Text(
                                          "Consultation",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text("Tuesday-9am-11am",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w800)),
                                        leading: ClipRRect(
                                          // borderRadius:
                                          //     BorderRadius.all(Radius.circular(100)),
                                          child: Container(
                                            // height: 40,
                                            // width: 40,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .backgroundColor,
                                            ),
                                            child: Image.network(
                                                "https://c8.alamy.com/comp/H9NDYN/april-27-isometric-calendar-icon-with-shadowvector-illustrationflat-H9NDYN.jpg"),
                                          ),
                                        ),
                                        trailing:
                                            Icon(Icons.navigate_next_sharp),
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
                                      child: ListTile(
                                        title: Text(
                                          "Consultation",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text("Tuesday-9am-11am",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w800)),
                                        leading: ClipRRect(
                                          // borderRadius:
                                          //     BorderRadius.all(Radius.circular(100)),
                                          child: Container(
                                            // height: 40,
                                            // width: 40,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .backgroundColor,
                                            ),
                                            child: Image.network(
                                                "https://c8.alamy.com/comp/H9NDYN/april-27-isometric-calendar-icon-with-shadowvector-illustrationflat-H9NDYN.jpg"),
                                          ),
                                        ),
                                        trailing:
                                            Icon(Icons.navigate_next_sharp),
                                      )),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
