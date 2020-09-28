import 'dart:io';

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
            ],
          ),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow[400],
                child: Text('Container 3'),
                alignment: Alignment.bottomCenter,
              ),
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
