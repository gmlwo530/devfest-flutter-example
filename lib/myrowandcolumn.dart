import 'package:flutter/material.dart';

class MyRowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("My Row and Column"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[MyRow(), MyColumn()],
          )),
        );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      color: Colors.lightBlue[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.map, size: 30.0, color: Colors.white,),
          Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text("Hello, DevFest!!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
      margin: EdgeInsets.only(top: 20.0),
      color: Colors.lightGreenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.map, size: 30.0, color: Colors.white),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "Hello, DevFest!!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
