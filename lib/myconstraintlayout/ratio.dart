import 'package:flutter/material.dart';

class Ratio extends StatelessWidget{
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
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
                width: 300.0,
                height: double.infinity,
                color: Colors.lightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
//                      NoSizedBoxExample(),
                    BoxOne(),
                    BoxTwo(),
                    BoxThree(),
                  ],
                ),
            ))));
  }
}

class BoxOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100.0,
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            color: Colors.white,
            child: Center(
                child: Text("1:1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),)
            ),
          ),
        ),
      );
  }
}

class NoSizedBoxExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(
          color: Colors.white,
          child: Center(
              child: Text("2:1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),)
          ),
        ),
      );
  }
}

class BoxTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: AspectRatio(
        aspectRatio: 1 / 2,
        child: Container(
          color: Colors.white,
          child: Center(
              child: Text("1:2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),)
          ),
        ),
      )
    );
  }
}
class BoxThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100.0,
        child: AspectRatio(
          aspectRatio: 2 / 1,
          child: Container(
            color: Colors.white,
            child: Center(
                child: Text("2:1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),)
            ),
          ),
        )
    );
  }
}
