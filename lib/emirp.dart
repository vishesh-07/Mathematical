import 'package:flutter/material.dart';

class Emirp extends StatefulWidget {
  @override
  _EmirpState createState() => _EmirpState();
}

class _EmirpState extends State<Emirp> {
  var num1 = 0, result = "";
  final TextEditingController firstNumber = TextEditingController(text: "");
  @override
  bool check() {
    try {
      num1 = int.parse(firstNumber.text);
      return true;
    } on FormatException catch (e) {
      showAlertDialog(context);
      setState(() {
        num1 = 0;
        result = "";
        return false;
      });
    }
  }

  bool isPrime(int n) {
    // Corner case
    if (n <= 1) return false;

    // Check from 2 to n-1
    for (int i = 2; i < n; i++) if (n % i == 0) return false;

    return true;
  }

  bool isEmirp(int n) {
    // Check if n is prime
    if (isPrime(n) == false) return false;

    // Find reverse of n
    int rev = 0;
    while (n != 0) {
      int d = n % 10;
      rev = rev * 10 + d;
      n ~/= 10;
    }

    // If both Original and Reverse are Prime,
    // then it is an Emirp number
    return isPrime(rev);
  }

  void sol() {
    if (check()) {
      setState(() {
        if (isEmirp(num1) == true) {
          result = "Yes, $num1 is an Emrip Number.";
        } else {
          result = "No, $num1 is not  an Emrip Number.";
        }
      });
    }
  }

  void clear() {
    setState(() {
      firstNumber.text = "";
      num1 = 0;
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emirp Number Checker'),
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
                  '$result',
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
                      onPressed: sol,
                      color: Colors.teal[400],
                      child: Text(
                        'Check',
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
