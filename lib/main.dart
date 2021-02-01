import 'package:flutter/material.dart';

import 'BookSession.dart';
import 'Login.dart';
import 'Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: Colors.black,
          primaryColor: Colors.orangeAccent,
          canvasColor: Colors.white),
      home: Login(),
    );
  }
}
