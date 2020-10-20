
import 'package:flutter/material.dart';
class Neon extends StatefulWidget {
  @override
  _NeonState createState() => _NeonState();
}

class _NeonState extends State<Neon> {
  var num1 = 0, result="";
  final TextEditingController firstNumber = TextEditingController(text: "");
  @override
  bool check() {
    try {
      num1 = int.parse(firstNumber.text);
      return true;
    } on FormatException catch (e) {
      showAlertDialog(context);
      setState(() {
        num1=0;
        result="";
        return false;
      });
    }
  }
void sol(){
  if(check()){
    setState(() {
       int sq =num1*num1;
         int sum_digits = 0; 
    while (sq != 0) { 
        sum_digits = sum_digits + sq % 10; 
        sq ~/= 10; 
    } 

       if(sum_digits==num1){
          result="Yes, $num1 is a Neon Number.";
        }else{
          result="No, $num1 is not  a Neon Number.";
        }
    });
  }
 
}
  void clear() {
    setState(() {
      firstNumber.text = "";
      num1=0;
      result="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neon Number Checker'),
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
