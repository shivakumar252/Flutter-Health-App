import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person),
          backgroundColor: Colors.white,
        ),
        body: Column(children: <Widget>[
          Text("Find Your Desired Doctor",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold)),
          TextField(
            decoration: new InputDecoration(
              labelText: "Search Your Doctors",
              icon: new Icon(Icons.search),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
              Row(
           children:[
            Text("Categories",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.black)),
           ]
         ),
        
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
            
                Container(
child: Card(
elevation: 3,
color: Colors.orangeAccent,
child: Column(
children: [
FractionalTranslation(
translation: Offset(0.5, -0.3),
child: Align(
child: Container(
height: 50,
width: 50,
child: Image.network("https://png.pngtree.com/png-vector/20190228/ourmid/pngtree-tooth-dental-icon-design-template-vector-illustration-png-image_710399.jpg"),
decoration: BoxDecoration(
color: Colors.blue,
borderRadius: BorderRadius.circular(10)
),
padding: const EdgeInsets.only(left: 0),
),

),
),

Container(
child: Text("Dental \nSurgeon",style: TextStyle(color: Colors.purple),),
padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
),
],
)
),
padding: const EdgeInsets.only(left: 10),
),
                Container(
child: Card(
elevation: 3,
color: Colors.blueGrey,
child: Column(
children: [
FractionalTranslation(
translation: Offset(0.5, -0.3),
child: Align(
child: Container(
height: 50,
width: 50,
child: Image.network("https://cdn3.f-cdn.com/contestentries/956697/13573594/58b02d945598b_thumb900.jpg"),
decoration: BoxDecoration(
color: Colors.blue,
borderRadius: BorderRadius.circular(10)
),
padding: const EdgeInsets.only(left: 0),
),

),
),

Container(
child: Text("Heart \nSurgeon",style: TextStyle(color: Colors.purple),),
padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
),
],
)
),
padding: const EdgeInsets.only(left: 10),
),
                Container(
child: Card(
elevation: 3,
color: Colors.blueAccent,
child: Column(
children: [
FractionalTranslation(
translation: Offset(0.5, -0.3),
child: Align(
child: Container(
height: 50,
width: 50,
child: Image.network("https://images.saymedia-content.com/.image/t_share/MTc0MTY5OTE0NTYxODAwMDYw/how-to-draw-a-cartoon-eye.jpg"),
decoration: BoxDecoration(
color: Colors.blue,
borderRadius: BorderRadius.circular(10)
),
padding: const EdgeInsets.only(left: 0),
),

),
),

Container(
child: Text("Eye \nSpeciality",style: TextStyle(color: Colors.purple),),
padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
),
],
)
),
padding: const EdgeInsets.only(left: 10),
),Container(
child: Card(
elevation: 3,
color: Colors.redAccent,
child: Column(
children: [
FractionalTranslation(
translation: Offset(0.5, -0.3),
child: Align(
child: Container(
height: 50,
width: 50,
child: Image.network("https://cdn3.f-cdn.com/contestentries/956697/13573594/58b02d945598b_thumb900.jpg"),
decoration: BoxDecoration(
color: Colors.blue,
borderRadius: BorderRadius.circular(10)
),
padding: const EdgeInsets.only(left: 0),
),

),
),

Container(
child: Text("Cardiologist \nSurgeon",style: TextStyle(color: Colors.purple),),
padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
),
],
)
),
padding: const EdgeInsets.only(left: 10),
),
              ],
            ),
          ),
         Row(
           children:[
              Text(
            "Top Doctors",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black),
          ),
           ]
         ),
      
 ListTile(
   tileColor: Colors.blueGrey,
        leading: Icon(Icons.person),
        title: Text('The Enchanted Nightingale'),
        subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      ),
   ListTile(
     tileColor: Colors.orangeAccent,
        leading: Icon(Icons.person),
        title: Text('The Enchanted Nightingale'),
        subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      ),
       ListTile(
         tileColor: Colors.grey,
        leading: Icon(Icons.person),
        title: Text('The Enchanted Nightingale'),
        subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      ),
      
     

        ]
        )
        );
  }
}
