import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Row and Column Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  //color: Colors.yellow[700],
                  child: Center(child: Text('Container 1')),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    border: Border.all(color: Colors.black, width: 3),
                  )),
              Transform.rotate(
                angle: pi / 4,
                child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                    child: Center(
                      child: Text('Container 2'),
                    )),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow[400],
                    child: Text('Container 3'),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue[400],
                      child: Text('Container 4'),
                      alignment: Alignment.centerRight,
                    ),
                  ))
            ],
          ),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text(
                    'Container 5',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 3)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
