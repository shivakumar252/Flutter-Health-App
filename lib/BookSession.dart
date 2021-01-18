import 'package:flutter/material.dart';

import 'DetailsPage.dart';
import 'HomePage.dart';

class BookSession extends StatefulWidget {
  @override
  _BookSessionState createState() => _BookSessionState();
}

class _BookSessionState extends State<BookSession> {
  String imageSrc;
  void detailsPage(imageSrc){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(imageSrc)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Book Session"),
          backgroundColor:Color(0xFFFF1744),
          ),
          body: ListView(
            children:<Widget> [
          //     FlatButton(
          //       color: Colors.blueGrey,
          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //     onPressed:(){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          //     } ,
          //     child: Text("YOUR BMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16.0),
          //     ),
          //     ),
          //      FlatButton(
          //       color: Colors.amber,
          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //     onPressed:(){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          //     } ,
          //     child: Text("Book Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16.0),
          //     ),
          //     ),
             Image.network("https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif"),
             RaisedButton(
               onPressed:(){
                 detailsPage("https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif");
               },
               child: Text("Meditation",style: TextStyle(color:Colors.black,fontSize:14.0,fontWeight:FontWeight.bold),),
                ),
             Image.network("https://content1.getnarrativeapp.com/68f6039f-a2f9-4e15-9b91-4f7cebe2a378/img_ref/3bd566cf-39ff-45fd-bc66-7cbe071da05f/Kim%20B%20-117_professional_yoga_photographer_photos_photography_750.jpg"),
              RaisedButton(
               onPressed:(){
                 detailsPage("https://content1.getnarrativeapp.com/68f6039f-a2f9-4e15-9b91-4f7cebe2a378/img_ref/3bd566cf-39ff-45fd-bc66-7cbe071da05f/Kim%20B%20-117_professional_yoga_photographer_photos_photography_750.jpg");
               },
                  child: Text("Meditation",style: TextStyle(color:Colors.black,fontSize:14.0,fontWeight:FontWeight.bold),),
               ),
             Image.network("https://i.pinimg.com/originals/c5/01/8c/c5018c083f2ab4e94d353253db4a3439.gif"),
              RaisedButton(
               onPressed:(){
                 detailsPage("https://i.pinimg.com/originals/c5/01/8c/c5018c083f2ab4e94d353253db4a3439.gif");
               },
                  child: Text("Pranayam",style: TextStyle(color:Colors.black,fontSize:14.0,fontWeight:FontWeight.bold),),
                ),

            ],),
          );
      
    
  }
}