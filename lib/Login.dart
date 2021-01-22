import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";
import 'Profile.dart';
import 'Registration.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SharedPreferences loginData;
  bool newUser;

  @override
  void initState() {
    // super keyword is used to refer immediate parent class object. It is used to call properties and methods of the superclass
    super.initState();
    check_if_logged_in();
  }

  void check_if_logged_in() async {
    loginData = await SharedPreferences.getInstance();
    newUser = (loginData.getBool('login') ?? true);
    print(newUser);
    
    if (newUser == false) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Profile(this.emailController.text)));
    } else {
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            backgroundColor: Colors.pink[100],
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('${this.emailController.text}'),
                  Text('${this.passwordController.text}')
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text(
                  'ok',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Profile(this.emailController.text)));
                },
              ),
            ],
          );
        });
  }

  void login() {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => Profile(this.emailController.text)));
    if (this.emailController.text == "shivu.mech25@gmail.com" &&
        this.passwordController.text == "Password@123") {
      loginData.setBool('login', false);
      loginData.setString('username', this.emailController.text);
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => Profile(this.emailController.text)));
              this._optionsDialogBox();
    } else {
      // this._optionsDialogBox();
    }
  }

  void onNavigationToRegister() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Registration()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 0.6),
              end: Alignment(
                  0.6, 1), // 10% of the width, so there are ten blinds.
              colors: [
                const Color(0xFFFF1744),
                const Color(0xffffff) //0xffffffff
              ], // red to yellow
              tileMode: TileMode.clamp, // repeats the gradient over the canvas
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                height: 50,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(165, 10, 165, 10),
                  padding: EdgeInsets.all(5.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 5.0, color: Colors.white),
                  ),
                  child: Image.asset("assets/19494981-blood-drop-in-hand.jpg")),
              Container(
                width: 400,
                height: 250,
                child: Column(
                  children: <Widget>[
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: new TextField(
                        decoration: InputDecoration(hintText: "Enter  Email"),
                        style: TextStyle(color: Colors.white),
                        onChanged: (password) {
                          print('');
                        },
                        controller: emailController,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.enhanced_encryption,
                        color: Colors.black,
                      ),
                      trailing: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      title: new TextField(
                        decoration: InputDecoration(
                          hintText: "Enter  Password",
                        ),
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        onChanged: (password) {
                          print('');
                        },
                        controller: passwordController,
                      ),
                      subtitle: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        login();
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xFFE3F2FD),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onNavigationToRegister();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      bottomSheet: Container(
        margin: EdgeInsets.all(10.0),
        child: Text(
          "Terms & Conditions",
          style: TextStyle(
              color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
