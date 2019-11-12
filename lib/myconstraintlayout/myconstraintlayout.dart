import 'package:flutter/material.dart';
import 'package:flutter_example/myconstraintlayout/ratio.dart';
import 'package:flutter_example/myconstraintlayout/bias.dart';
import 'package:flutter_example/myconstraintlayout/percent.dart';

class MyConstraintLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("My Flutter Example"),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: MyList(),
            ));
    }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Bias"),
          onTap: () {
            _navTo(context, Bias());
          },
        ),
        ListTile(
          title: Text("Percent"),
          onTap: () {
            _navTo(context, Percent());
          },
        ),
        ListTile(
          title: Text("Ratio"),
          onTap: () {
            _navTo(context, Ratio());
          },
        ),
      ],
    );
  }

  void _navTo(BuildContext context, Widget widget){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}
