import 'package:flutter/material.dart';

import 'BookSession.dart';

class DetailsPage extends StatefulWidget {
  String imageSrc;
DetailsPage(this.imageSrc);

  @override
  _DetailsPageState createState() => _DetailsPageState(this.imageSrc);
}

class _DetailsPageState extends State<DetailsPage> {
_DetailsPageState(this.imageSrc);
  String imageSrc;
  Future<void>_optionsDialogBox() {
return showDialog(context: context,
    builder:(BuildContext context){
      return AlertDialog(
        title: Text('Success'),
        backgroundColor: Colors.blueAccent,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Data is Saved Successfully!')
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('ok',style: TextStyle(color:Colors.white),),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));
            },
          ),
        ],
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20.0,color: Colors.white),),
        backgroundColor: Color(0xFFFF1744),
      ),
      body:Container(
      
        child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network("$imageSrc"),
          Container(
            child: Column(
              children:<Widget>[
                ListTile(
                  leading:Icon(Icons.person),
                   title: new TextField(
                     decoration:InputDecoration(
                      border: OutlineInputBorder(),
                     hintText:"Enter a Name")
                   ),
                ),
                 ListTile(
                  leading:Icon(Icons.person),
                   title: new TextField(
                     decoration:InputDecoration(
                      border: OutlineInputBorder(),
                     hintText:"Enter a Gender")
                   ),
                ),
                 ListTile(
                  leading:Icon(Icons.person),
                   title: new TextField(
                     decoration:InputDecoration(
                      border: OutlineInputBorder(),
                     hintText:"Enter a Age")
                   ),
                ),
                 ListTile(
                  leading:Icon(Icons.home),
                   title: new TextField(
                     decoration:InputDecoration(
                      border: OutlineInputBorder(),
                     hintText:"Enter a Address")
                   ),
                ),
              ]
            )
          ),
          RaisedButton(
          onPressed: (){
            _optionsDialogBox();
          },
          color:Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Text("Save",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 20.0),),
          )
        ],
      ),
      )
   
    
    );
   
  }
  
}