import 'package:flutter/material.dart';

class Maths extends StatefulWidget {
  @override
  _MathsState createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  var num1 = 0, num2 = 0, ans = 0;
  final TextEditingController firstNumber = TextEditingController(text: "");
  final TextEditingController secondNumber = TextEditingController(text: "");
  bool check() {
    try {
      num1 = int.parse(firstNumber.text);
      num2 = int.parse(secondNumber.text);
      return true;
    } on FormatException catch (e) {
      showAlertDialog(context);
      setState(() {
        ans = 0;
        return false;
      });
    }
  }

  void add() {
    if (check()) {
      setState(() {
        ans = num1 + num2;
      });
    }
  }

  void subtract() {
    if (check()) {
      setState(() {
        ans = num1 - num2;
      });
    }
  }

  void multiply() {
    if (check()) {
      setState(() {
        ans = num1 * num2;
      });
    }
  }

  void divide() {
    if (check()) {
      setState(() {
        try {
          ans = num1 ~/ num2;
        } on IntegerDivisionByZeroException catch (e) {
          ans = 0;
        }
      });
    }
  }

  void clear() {
    setState(() {
      firstNumber.text = "";
      secondNumber.text = "";
      ans = 0;
    });
  }

  void mod() {
    if (check()) {
      setState(() {
        ans = num1 % num2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
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
                    labelText: 'Enter First Number',
                    hintText: 'Enter First Number',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: Colors.teal[400],
                  keyboardType: TextInputType.number,
                  controller: secondNumber,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Second Number',
                    hintText: 'Enter Second Number',
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
                      onPressed: add,
                      color: Colors.teal[400],
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: subtract,
                      color: Colors.teal[400],
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: multiply,
                      color: Colors.teal[400],
                      child: Text(
                        '*',
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
                      onPressed: divide,
                      color: Colors.teal[400],
                      child: Text(
                        '/',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: mod,
                      color: Colors.teal[400],
                      child: Text(
                        '%',
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
                elevation: 5,
              shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
),
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
