import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget{
  final String data;

  ExampleTwo({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("My Start Activity - Example Two"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(),
                Text(this.data, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
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