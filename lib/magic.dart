import 'package:flutter/material.dart';

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  var num1 = 0,ans = 0, result="";
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
        ans = 0;
        result="";
        return false;
      });
    }
  }
void find() {
    if (check()) {
      setState(() {
        int temp = num1,ans=0;
        while (temp > 0 || ans > 9) 
    { 
        if (temp == 0) 
        { 
            temp = ans; 
            ans = 0; 
        } 
        ans += temp % 10; 
        temp~/= 10; 
    }
        if(ans==1){
          result="Yes, $num1 is a Magic Number.";
        }else{
          result="No, $num1 is not  a Magic Number.";
        }
      });
    }
  }

  void clear() {
    setState(() {
      firstNumber.text = "";
      num1=0;
      ans = 0;
      result="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic Number Checker'),
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
                      onPressed: find,
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
