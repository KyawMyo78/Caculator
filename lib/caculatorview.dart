import 'package:caculator/button.dart';
import 'package:caculator/caculation.dart';
import 'package:flutter/material.dart';

class CaculatorView extends StatefulWidget {
  @override
  _CaculatorViewState createState() => _CaculatorViewState();
}

String number = getNumber();

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
    child: Flexible(
      child: Text(
        number,
        style: TextStyle(fontSize: 50, color: Colors.amber),
        textAlign: TextAlign.end,
      ),
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
      opratorButton(a),
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

class _CaculatorViewState extends State<CaculatorView> {
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
            _upperRow("AC", Icons.backspace, '\u00F7'),
            _space(),
            _buttonRow("၇", "၈", "၉", '\u00D7'),
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
