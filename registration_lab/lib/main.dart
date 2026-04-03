import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(TestExampleApp());

class TestExampleApp extends StatefulWidget {
  @override
  State<TestExampleApp> createState() => _TestExampleAppState();
}

class _TestExampleAppState extends State<TestExampleApp> {
  double x = 50;
  double y = 50;

  double width = 50;
  double height = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(left: x, top: y, child: Container(color: Colors.blue, width: 50, height: 50,)),
            Column(children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  y -= 10;
                  y = max(0, y);
                });
              }, child: Text("UP")),
              ElevatedButton(onPressed: (){
                setState(() {
                  y += 10;
                  y = min(y, 1000);
                });
              }, child: Text("DOWN")),
              ElevatedButton(onPressed: (){
                setState(() {
                  x -= 10;
                  x = max(0, x);
                });
              }, child: Text("LEFT")),
              ElevatedButton(onPressed: (){
                setState(() {
                  x += 10;
                  x = min(3000, x);
                });
              }, child: Text("RIGHT"))
            ],)
          ],
        ),
      ),
    );
  }
}