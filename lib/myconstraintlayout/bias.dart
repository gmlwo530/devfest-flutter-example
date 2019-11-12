import 'package:flutter/material.dart';

class Bias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Bias"),
            ),
            body: Center(
              child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    color: Colors.lightBlue,
//                    child: BiasExampleOne(),
                    child: BiasExampleTwo(),
                  )
              ),
            )));
  }
}

class BiasExampleOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.3, 0.75),
      child: Text(
        "My Text",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
      ),
    );
  }
}

class BiasExampleTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset(0.3, 0.75),
      child: Text(
        "My Text",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
      ),
    );
  }
}