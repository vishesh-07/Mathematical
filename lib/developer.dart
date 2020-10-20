import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer Information'),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/fiend.jpg'),
              radius: 50,
              backgroundColor: Colors.blueGrey[800],
            ),
            Text(
              'Vishesh Suryavanshi',
              style: TextStyle(
                  fontFamily: 'Sacramento',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                 ),
            ),
            
            Card(
              color: Colors.teal[400],
              //  margin: const EdgeInsets.only(top: 20.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.graduationCap,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "Acropolis Institute of Technology & Research",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.arrowCircleRight,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "B.Tech In Information Technology",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.code,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "C, C++,Java, Python,Dart, Kotlin, Flutter, HTML5, CSS3",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold,fontSize:14 ),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.terminal,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "5 ★ on HackerRank",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.codepen,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "2 ★ on CodeChef",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "+91 7723870656",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "vishesh.suryavanshi07@gmail.com",
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 1.0,
                      fontSize: 15.0),
                ),
              ),
            ),
            Card(
              color: Colors.teal[400],
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.blueGrey[800],
                ),
                title: Text(
                  "Indore, Madhya Pradesh",
                  style: TextStyle(
                      color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
