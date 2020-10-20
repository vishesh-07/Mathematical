import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Trigno extends StatefulWidget {
  @override
  _TrignoState createState() => _TrignoState();
}

class _TrignoState extends State<Trigno> {
  var num1 = 0;
  double rad = 0.0, ans = 0.0;
  final TextEditingController firstNumber = TextEditingController(text: "");
  bool check() {
    try {
      num1 = int.parse(firstNumber.text);
      rad = (num1 * 3.14) / 180;
      return true;
    } on FormatException catch (e) {
      showAlertDialog(context);
      setState(() {
        ans = 0;
        return false;
      });
    }
  }

  void sinCalc() {
    if (check()) {
      setState(() {
        ans = sin(rad);
      });
    }
  }

  void cosCalc() {
    if (check()) {
      setState(() {
        ans = cos(rad);
      });
    }
  }

  void tanCalc() {
    if (check()) {
      setState(() {
        ans = tan(rad);
      });
    }
  }

  void cosecCalc() {
    if (check()) {
      setState(() {
        ans = 1 / sin(rad);
      });
    }
  }

  void secCalc() {
    if (check()) {
      setState(() {
        ans = 1 / cos(rad);
      });
    }
  }

  void cotCalc() {
    if (check()) {
      setState(() {
        ans = 1 / tan(rad);
      });
    }
  }

  void clear() {
    setState(() {
      firstNumber.text = "";

      ans = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trignomatric Calculator'),
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
                    labelText: 'Enter Degree',
                    hintText: 'Enter Degree',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Output is $ans',
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
                      onPressed: sinCalc,
                      color: Colors.teal[400],
                      child: Text(
                        'Sin(x)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: cosCalc,
                      color: Colors.teal[400],
                      child: Text(
                        'Cos(x)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: tanCalc,
                      color: Colors.teal[400],
                      child: Text(
                        'Tan(x)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
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
                      onPressed: secCalc,
                      color: Colors.teal[400],
                      child: Text(
                        'Sec(x)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: cotCalc,
                      color: Colors.teal[400],
                      child: Text(
                        'Cot(x)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: cosecCalc,
                      color: Colors.teal[400],
                      child: Text(
                        'Cosec(x)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
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
