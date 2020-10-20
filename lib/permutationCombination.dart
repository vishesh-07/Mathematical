import 'package:flutter/material.dart';

class PC extends StatefulWidget {
  @override
  _PCState createState() => _PCState();
}

class _PCState extends State<PC> {
  var num1 = 0, num2 = 0, ans = "";
  final TextEditingController firstNumber = TextEditingController(text: "");
  final TextEditingController secondNumber = TextEditingController(text: "");
  bool check() {
    try {
      num1 = int.parse(firstNumber.text);
      num2 = int.parse(secondNumber.text);
      if (num2 > num1) {
        showAlertDialog(context);
        return false;
      }
      return true;
    } on FormatException catch (e) {
      showAlertDialog(context);
      setState(() {
        ans = "";
        return false;
      });
    }
  }

  int fact(int n) {
    if (n <= 1) return 1;
    return n * fact(n - 1);
  }

  int nPr(int n, int r) {
    return fact(n) ~/ fact(n - r);
  }

  int nCr(int n, int r) {
    return fact(n) ~/ (fact(r) * fact(n - r));
  }

  void permutation() {
    if (check()) {
      setState(() {
        ans = 'Permutation of $num1 and $num2 is ${nPr(num1, num2)}';
      });
    }
  }

  void combination() {
    if (check()) {
      setState(() {
        ans = 'Combination of $num1 and $num2 is ${nCr(num1, num2)}';
      });
    }
  }

  void clear() {
    setState(() {
      firstNumber.text = "";
      secondNumber.text = "";
      ans = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permutation Combination Calculator'),
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
                  '$ans',
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
                      onPressed: permutation,
                      color: Colors.teal[400],
                      child: Text(
                        'NPR',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: combination,
                      color: Colors.teal[400],
                      child: Text(
                        'NCR',
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
