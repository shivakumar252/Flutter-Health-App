import 'package:flutter/material.dart';
import 'package:healthy_app/Aboutus.dart';
import 'package:healthy_app/NewPage.dart';
import 'BookSession.dart';
import 'DoctorDetails.dart';
import 'HomePage.dart';
import 'Login.dart';
import 'NewSession.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Registration.dart';

class Profile extends StatefulWidget {
  String email;
  Profile(this.email);
  @override
  _ProfileState createState() => _ProfileState(this.email);
}

class _ProfileState extends State<Profile> {
  _ProfileState(this.email);
  String email;


  // the code related to shared preferences//
  SharedPreferences logindata;
  String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
     
    });
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  //Remove String
     prefs.remove("login");
  }
  //code related to shared preferences
  @override
  Widget build(BuildContext context) {
   final media = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF1744),
        title: Text("Profile Screen",style: TextStyle(color: Colors.white),),
      ),
      drawer: media.width < 600
          ? 
      Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/624111.jpg'))),
            child: Stack(
              children: <Widget>[
                Positioned(
                    bottom: 5.0,
                    left: 16.0,
                    child: Text("SkyCliff IT",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
          ),
          UserAccountsDrawerHeader(
            otherAccountsPictures: [],
            currentAccountPicture: CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKGQHa6WkBnTdHFI7ZsODlxNsTSkTht3bMEA&usqp=CAU"),
            ),
            accountName: Text(
              "Shivu",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('$username',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            arrowColor: Colors.black,
          ), // DrawerHeader(
          //   child: Text("Skycliff IT",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0),),
          //   decoration: BoxDecoration(color: Colors.blue),
          //   ),
          // UserAccountsDrawerHeader(
          //   accountName:Text("Shivu") ,
          //   accountEmail: Text("Skycliffit@gmail.com")),
          ListTile(
            title: Text(
              "Your BMI",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          ListTile(
              title: Text(
                "Book Session",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.event,
                color: Colors.cyanAccent,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookSession()));
              }),
                  ListTile(
            title: Text("About Us",style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
            leading: Icon(
              Icons.mail,
              color: Colors.indigoAccent
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
              },
              ),
          ListTile(
            title: Text(
              "Log Out",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.contacts,
              color: Colors.indigoAccent,
            ),
            onTap: () {
              removeValues();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            
          ),
      
        ]),
      ):
      null,
      body:Container(
        child:ListTile(
          title:Text("Hello"),
          subtitle: OrientationBuilder(
          builder: (context,orientation){
            return    GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Find Doctor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "210 Doctors",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(top: 20, left: 15),
                  )
                ],
              ),
            ),
            color: Colors.red,
          ),
        Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.card_membership,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Appointments",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "50 Appointments Available",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(top: 20, left: 15),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorDetails()));
                    },
                  )
                ],
              ),
            ),
            color: Colors.redAccent,
          ),
       Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.list_alt,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Drug List",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "22 Services",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(top: 20, left: 15),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewSession()));
                    },
                  )
                ],
              ),
            ),
            color: Colors.grey,
          ),
        Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.medical_services,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Find Hospital",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "30 Hospital",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(top: 20, left: 15),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>(NewPage())));
                    },
                  ),

                ],
              ),
            ),
            color: Colors.blueGrey,
          ),
        ],
      );
          }
      )

    
    )
    )
    );
  }
}
