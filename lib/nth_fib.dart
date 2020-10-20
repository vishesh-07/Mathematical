import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fib extends StatefulWidget {
  @override
  _FibState createState() => _FibState();
}

class _FibState extends State<Fib> {
  var num1 = 1,ans = 1;
  final TextEditingController firstNumber = TextEditingController(text: "");
  @override
  bool check() {
    try {
      num1 = int.parse(firstNumber.text);
      return true;
    } on FormatException catch (e) {
      showAlertDialog(context);
      setState(() {
        ans = 1;
        return false;
      });
    }
  }
   void fib(){
    if(check()){
      setState(() {
        double phi = (1 + sqrt(5)) / 2; 
  ans= (pow(phi, num1) / sqrt(5)).round(); 
      });
    }
  }

  void clear() {
    setState(() {
      firstNumber.text = "";
      num1=1;
      ans = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nth Fibonacci Number Calculator'),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                TextField(
                  cursorColor: Colors.teal[400],
                  keyboardType: TextInputType.number,
                  controller: firstNumber,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Number',
                    hintText: 'Enter Number',
                  ),
                ),
                
                SizedBox(
                  height: 30,
                ),
                Text(
                'Fibonacci number at $num1 is $ans',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal[400],
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: fib,
                      color: Colors.teal[400],
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: clear,
                      color: Colors.teal[400],
                      child: Text(
                        'Clear',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text(
      "Ok",
      style: TextStyle(color: Colors.black),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.teal[400],
    title: Text('Invalid Input'),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
