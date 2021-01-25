import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  makePhone() async {
    const url = 'tel:9876543210';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  sendNessage() async {
    const url = 'sms:6360852142';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  sendEmail() async {
    const url = 'mailto:smith@example.org?subject=News&body=New%20plugin';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(''),
    backgroundColor: Colors.blueGrey,
    elevation: 0.5,),
    body:  Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Container(
          child: Image.asset(
              "assets/hand-changes-word-health-to-wealth-background-187108035-removebg-preview.png"),
        ),
        //  child: Image.network(
        //       "https://z9e9i7a5.stackpathcdn.com/wp-content/uploads/2020/06/HD-Web-Solutios-Portfolio.jpg"),
        // ),
        Container(
          child: Row(children: [
            Text("About Us",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    backgroundColor: Colors.blueGrey)),
          ]),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child:  Text(
          "Skycliff IT is passionately built to excel in Quality,  Value and Time driven Techno Commercial world. We understand the Customer Requirements and Time bound business commitments, thus, perform time critical processes to deliver accurate results with quality as the prime and unique proposition. ",
          textAlign: TextAlign.justify,style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              backgroundColor: Colors.blueGrey,),
        )
        ),
        SizedBox(height: 10),
        Container(
          child: Column(children: [
            Container(
              child: Row(children: [
                Text("Contact Us",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                        backgroundColor: Colors.blueGrey)),
              ]),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 200,
              child: RaisedButton.icon(
                onPressed: () {
                  sendNessage();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'Sent a message',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                splashColor: Colors.red,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: RaisedButton.icon(
                onPressed: () {
                  sendEmail();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'Sent a E-mail',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                icon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                splashColor: Colors.red,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: RaisedButton.icon(
                onPressed: () {
                  makePhone();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'Make a Phone-Call',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                splashColor: Colors.red,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: RaisedButton.icon(
                onPressed: launchURL,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'Go through official website',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                icon: Icon(
                  Icons.web,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                splashColor: Colors.red,
                color: Colors.redAccent,
              ),
            ),
          ]),
        ),
      ]),
    )
    );
   
  }
}
