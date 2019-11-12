import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("My Start Activity - Example One"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(),
                Text("Start Activty Example", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                RaisedButton(
                  child: Text("Back Button"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          )
        );
  }
}