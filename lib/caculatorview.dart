import 'package:flutter/material.dart';
import 'package:caculator/caculation.dart';

class CaculatorView extends StatefulWidget {
  @override
  _CaculatorViewState createState() => _CaculatorViewState();
}

class _CaculatorViewState extends State<CaculatorView> {
  String displayAns = "";
  String answer = "";
  String orphand = "";
  bool isOprtPressed = false;
  String mmFirstStr = "";
  String mmSecondStr = "";
  String engFirstStr = "";
  String engSecondStr = "";
  double fNum = 0.0;
  double sNum = 0.0;

  Widget button(String btnText) {
    return FlatButton(
      color: Colors.amber,
      height: 70,
      shape: CircleBorder(
        side: BorderSide(
          width: 1.0,
          color: Colors.amber,
        ),
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        if (isOprtPressed == false) {
          mmFirstStr = mmFirstStr + btnText;
          engFirstStr = toEng(mmFirstStr);
        } else {
          mmSecondStr = mmSecondStr + btnText;
          engSecondStr = toEng(mmSecondStr);
          isOprtPressed = false;
        }
        setState(() {
          displayAns = displayAns + btnText;
        });
      },
    );
  }

  Widget space(double space) {
    return Container(
      width: space,
    );
  }

  Widget iconButton(IconData icon) {
    return FlatButton(
      color: Colors.amber,
      height: 70,
      shape: CircleBorder(
        side: BorderSide(
          width: 1.0,
          color: Colors.amber,
        ),
      ),
      child: Icon(icon),
      onPressed: () {
        if (isOprtPressed == false) {
          mmFirstStr = mmFirstStr.substring(0, mmFirstStr.length - 1);
          engFirstStr = engFirstStr.substring(0, engFirstStr.length - 1);
        } else {
          mmSecondStr = mmSecondStr.substring(0, mmSecondStr.length - 1);
          engSecondStr = engSecondStr.substring(0, engSecondStr.length - 1);
        }
        setState(() {
          displayAns = displayAns.substring(0, displayAns.length - 1);
        });
      },
    );
  }

  Widget largeButtom(String number) {
    return FlatButton(
      height: 70,
      minWidth: 165,
      color: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Text(
        number,
        style: TextStyle(fontSize: 25.0),
      ),
      onPressed: () {
        if (number == "AC") {
          answer = "";
          orphand = "";
          isOprtPressed = false;
          mmFirstStr = "";
          mmSecondStr = "";
          engFirstStr = "";
          engSecondStr = "";
          fNum = 0.0;
          sNum = 0.0;
          setState(() {
            displayAns = "";
          });
          print("cleared");
        } else {
          fNum = double.parse(engFirstStr);
          sNum = double.parse(engSecondStr);
          print(fNum);
          print(sNum);
          print(orphand);
          if (orphand == "+") {
            answer = add(fNum, sNum).toString();
          } else if (orphand == "-") {
            answer = minus(fNum, sNum).toString();
          } else if (orphand == "x") {
            answer = multiply(fNum, sNum).toString();
          } else if (orphand == "÷") {
            answer = divide(fNum, sNum).toString();
          }
          print(answer);
          String mmAns = toMyanmar(answer);
          print('this is eng ans $mmAns');
          setState(() {
            displayAns = mmAns;
          });
        }
      },
    );
  }

  Widget opratorButton(String oprt) {
    return FlatButton(
      color: Colors.amber,
      height: 70,
      shape: CircleBorder(
        side: BorderSide(
          width: 1.0,
          color: Colors.amber,
        ),
      ),
      child: Text(
        oprt,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        isOprtPressed = true;
        orphand = oprt;
        setState(() {
          displayAns = displayAns + oprt;
        });
      },
    );
  }

  Widget _buttonRow(String a, String b, String c, String d) {
    const double s = 10.0;
    return Row(
      children: <Widget>[
        button(a),
        space(s),
        button(b),
        space(s),
        button(c),
        space(s),
        opratorButton(d),
      ],
    );
  }

  Widget _shadedline() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1),
      height: 0.1,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
    );
  }

  Widget _displayAns() {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Color(0xff333533),
      child: Text(
        displayAns,
        style: TextStyle(fontSize: 50, color: Colors.amber),
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget _upperRow(String a, IconData icon, String b) {
    return Row(
      children: <Widget>[
        space(10.0),
        largeButtom(a),
        space(22.0),
        iconButton(icon),
        space(10.0),
        opratorButton(b),
      ],
    );
  }

  Widget _bottemRow(String a, String b, String c) {
    return Row(
      children: <Widget>[
        button(a),
        space(10.0),
        button(b),
        space(18.0),
        largeButtom(c),
      ],
    );
  }

  Widget _space() {
    return SizedBox(
      height: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Color(0xff202020),
        title: Text(
          "Caculator",
          style: TextStyle(color: Colors.amber, fontSize: 26),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _shadedline(),
            Expanded(
              child: _displayAns(),
            ),
            _shadedline(),
            _space(),
            _upperRow("AC", Icons.backspace, "÷"),
            _space(),
            _buttonRow("၇", "၈", "၉", "x"),
            _space(),
            _buttonRow("၄", "၅", "၆", "-"),
            _space(),
            _buttonRow("၁", "၂", "၃", "+"),
            _space(),
            _bottemRow(".", "၀", "="),
            _space(),
          ],
        ),
      ),
    );
  }
}
