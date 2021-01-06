import 'package:caculator/caculation.dart';
import 'package:flutter/material.dart';

Widget button(String a) {
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
      a,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      String engNum = e2m(a);
      setNumber(double.parse(engNum));
      print(engNum);
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
    onPressed: () {},
  );
}

Widget largeButtom(String a) {
  return FlatButton(
    height: 70,
    minWidth: 165,
    color: Colors.amber,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
    ),
    child: Text(
      a,
      style: TextStyle(fontSize: 25.0),
    ),
    onPressed: () {},
  );
}

Widget opratorButton(String a) {
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
      a,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onPressed: () {},
  );
}
