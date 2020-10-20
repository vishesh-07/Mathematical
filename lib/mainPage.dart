import 'package:Mathematical/automorphic.dart';
import 'package:Mathematical/developer.dart';
import 'package:Mathematical/emirp.dart';
import 'package:Mathematical/harshad.dart';
import 'package:Mathematical/isFibonacci.dart';
import 'package:Mathematical/magic.dart';
import 'package:Mathematical/neon.dart';
import 'package:Mathematical/palindrome.dart';
import 'package:Mathematical/permutationCombination.dart';
import 'package:Mathematical/special.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Mathematical/calculator.dart';
import 'package:Mathematical/mathoperation.dart';
import 'package:Mathematical/trignomentry.dart';
import 'package:Mathematical/factorial.dart';
import 'package:Mathematical/nth_fib.dart';
import 'package:Mathematical/armstrong.dart';
import 'package:Mathematical/prime.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematical',style: TextStyle(fontFamily: 'Sacramento',fontWeight: FontWeight.bold,fontSize:30 ),),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          Container(

            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Maths()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Calculator',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {},
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.squareRootAlt,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Mathematical Operation',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trigno()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.signal_cellular_4_bar_rounded,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Trignomatric Operation',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fact()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.exclamation,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Factorial Calculator',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PC()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Permutaion Combination Calculator',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fib()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Nth Fibonacci Number Calculator',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Arms()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Armstrong Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Prime()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Prime Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IsFib()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Fibonacci Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Palindrome()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Palindrome Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AutoMorphic()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Automorphic Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Neon()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Neon Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Magic()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Magic Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Emirp()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Emirp Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Harshad()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Harshad Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Special()),
                );
              },
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.calculator,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Special Number Checker',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: DrawerHeader(
                  child: Center(
                    child: Text(
                'Mathematical',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Sacramento',fontSize: 55,fontWeight: FontWeight.bold, color: Colors.white),
              ),
                  )),
              decoration: BoxDecoration(color: Colors.teal[400]),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Calculator',
                style: TextStyle(color: Colors.teal[400]),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Maths()),
                );
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.exclamation,color: Colors.teal[400],),
              title: Text(
                'Mathematical Operation',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
             leading: Icon(Icons.signal_cellular_4_bar_rounded,color: Colors.teal[400],),
              title: Text(
                'Trignomatic Operation',
                style: TextStyle(color: Colors.teal[400]),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trigno()),
                );
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.exclamation,color: Colors.teal[400],),
              title: Text(
                'Factorial Calculator',
                style: TextStyle(color: Colors.teal[400]),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fact()),
                );
              },
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PC()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Permutation Combination Calculator',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Nth Fibonacci Number Calculator',
                style: TextStyle(color: Colors.teal[400]),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fib()),
                );
              },
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Arms()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Armstrong Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Prime()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Prime Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IsFib()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Fibonacci Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Palindrome()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Palindrome Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AutoMorphic()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Automorphic Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            
            ListTile(
              
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Neon()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Neon Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Magic()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Magic Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Emirp()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Emirp Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Harshad()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Harshad Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Special()),
                );
              },
              leading: Icon(FontAwesomeIcons.calculator,color: Colors.teal[400],),
              title: Text(
                'Special Number Checker',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
            ListTile(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dev()),
                );
              },
              leading: Icon(FontAwesomeIcons.user,color: Colors.teal[400],),
              title: Text(
                'Developer Info.',
                style: TextStyle(color: Colors.teal[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
