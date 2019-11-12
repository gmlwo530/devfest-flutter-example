import 'package:flutter/material.dart';
import 'package:flutter_example/mystartactivity/exampleone.dart';
import 'package:flutter_example/mystartactivity/exampletwo.dart';

class MyStartActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("My Start Activity"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                StartActivityButton(),
                StartActivityForResultButton(),
                ResultText()
              ],
            ),
          )
        );
  }
}

class StartActivityButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
//        Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleOne()));
        Navigator.pushNamed(context, '/my_example_one');
        // ongenerate route 도 하기
      },
      child: Text("Start Activity"),
    );
  }
}

class StartActivityForResultButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder:
                (context) => ExampleTwo(data: "Hello, DevFest!!",)
            )
        );
      },
      child: Text("Start Activity With Data"),
    );
  }
}

class ResultText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
      "Result : Hello, DevFest!",
      style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
    );
  }
}