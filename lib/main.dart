import 'package:caculator/caculatorview.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caculator',
      theme: new ThemeData.dark(),
      home: CaculatorView(),
    );
  }
}
