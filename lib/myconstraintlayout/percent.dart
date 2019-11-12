import 'package:flutter/material.dart';

class Percent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Relative Position"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ExampleOne(),
                  ExampleTwo()
                ],
              ),
            )));
  }
}

class ExampleOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
        Container(
          color: Colors.lightBlue,
          padding: EdgeInsets.symmetric(vertical: 30.0),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
            child: Text("W 80%", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),)
          ),
        );
  }
}

class ExampleTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.lightBlue,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          height: MediaQuery.of(context).size.height * 0.7,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("H\n70\n%", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold))
              ]
          ),
        );
  }
}