import 'package:flutter/material.dart';
import 'dart:math';

class MathOp extends StatefulWidget {
  @override
  _MathOpState createState() => _MathOpState();
}

class _MathOpState extends State<MathOp> {
  double ans = 0.0;
  static final number = TextEditingController();
  double num = double.parse(number.text);
  // double num = double.parse(number.text);

  void floorValue() {
    setState(() {
      ans = num.floor().toDouble();
    });
  }

  void ceilValue() {
    setState(() {
      ans = num.ceil().toDouble();
    });
  }

  void absValue() {
    setState(() {
      ans = num.abs();
    });
  }

  void clear() {
    setState(() {
      number.text = "";
      ans = 0.0;
    });
  }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematical Operation'),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextField(
                cursorColor: Colors.teal[400],
                keyboardType: TextInputType.number,
                //controller: number,
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
                'Output is $ans',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal[400],
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    onPressed: floorValue,
                    color: Colors.teal[400],
                    child: Text(
                      'Floor Value',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RaisedButton(
                    elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    onPressed: ceilValue,
                    color: Colors.teal[400],
                    child: Text(
                      'Ceil Value',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RaisedButton(
                    elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    onPressed: absValue,
                    color: Colors.teal[400],
                    child: Text(
                      'Abs Value',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
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
