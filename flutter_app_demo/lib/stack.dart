import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      body: StackTest(),
    ),
  ));
}

Stack stack1 = Stack(
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 90,
      height: 90,
      color: Colors.green,
    ),
    Container(
      width: 80,
      height: 80,
      color: Colors.blue,
    )
  ],
);

var sizedBox = SizedBox(
  width: 250,
  height: 250,
  child: Stack(
    children: <Widget>[
      Container(
        width: 250,
        height: 250,
        color: Colors.white,
      ),
      Container(
        padding: EdgeInsets.all(15.0),
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          Colors.black.withAlpha(0),
          Colors.black12,
          Colors.black45
        ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: Text(
          'Foreground Text',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    ],

  ),
);

class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return sizedBox;
  }
}
