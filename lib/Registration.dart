import 'package:flutter/material.dart';
import 'package:healthy_app/Login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  void onRegistration() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color(0xFFFF1744),
        ),
        body: Builder(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(175, 5, 175, 5),
                  padding: EdgeInsets.all(1.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 5.0, color: Colors.redAccent),
                  ),
                  child: Image.asset("assets/19494981-blood-drop-in-hand.jpg")),
              Container(
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      "REGISTER",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                    ListTile(
                      title: Text(
                        "First Name",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: new TextField(
                          decoration:
                              InputDecoration(hintText: "Enter First Name")),
                    ),
                    ListTile(
                      title: Text(
                        "Last Name",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: new TextField(
                          decoration:
                              InputDecoration(hintText: "Enter Last Name")),
                    ),
                    ListTile(
                      title: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: new TextField(
                          decoration:
                              InputDecoration(hintText: "Enter  Email")),
                    ),
                    ListTile(
                      title: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: new TextField(
                        decoration:
                            InputDecoration(hintText: "Enter  Password"),
                        obscureText: true,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () => {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  'Registered Successfully,Login with Username and Password'),
                              backgroundColor: Colors.blueAccent,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(minutes: 1)),
                        ),
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()))
                      },
                      child: Text(
                        "CREATE ACCOUNT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
