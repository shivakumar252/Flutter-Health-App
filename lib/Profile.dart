import 'package:flutter/material.dart';

import 'BookSession.dart';
import 'HomePage.dart';
import 'Login.dart';

class Profile extends StatefulWidget {
  String email;
  Profile(this.email);
  @override
  _ProfileState createState() => _ProfileState(this.email);
}

class _ProfileState extends State<Profile> {
  _ProfileState(this.email);
  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFFFF1744),
        title: Text("Profile Screen"),
        ),
        drawer: Drawer(
          child: ListView(
            children:<Widget> [
              DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      
      decoration: BoxDecoration(
        color: Colors.amber,
          image: DecorationImage(
              fit: BoxFit.fill,
              image:  AssetImage('assets/624111.jpg'))),
      child: Stack(children: <Widget>[
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
              accountName: Text("Shivu",style: TextStyle(fontSize:18.0,color:Colors.blueAccent,fontWeight:FontWeight.bold),),
              accountEmail: Text(this.email,style: TextStyle(fontSize:14.0,color:Colors.black,fontWeight:FontWeight.bold)),
              arrowColor: Colors.black,
            ),     // DrawerHeader(
              //   child: Text("Skycliff IT",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0),),
              //   decoration: BoxDecoration(color: Colors.blue),
              //   ),
                // UserAccountsDrawerHeader(
                //   accountName:Text("Shivu") ,
                //   accountEmail: Text("Skycliffit@gmail.com")),
                ListTile(
                title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
                leading: Icon(Icons.home,color: Colors.blueAccent,),
                onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                ),
                 ListTile(
                title: Text("Your BMI",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
                leading: Icon(Icons.event,color: Colors.cyanAccent,),
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));

                }
                ),
                 ListTile(
                title: Text("Log Out",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
                leading: Icon(Icons.contacts,color: Colors.indigoAccent,),
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                )
            ],),
        ),
    );
  }
}