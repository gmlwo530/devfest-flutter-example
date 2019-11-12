import 'package:flutter/material.dart';
import 'package:flutter_example/myconstraintlayout/myconstraintlayout.dart';
import 'package:flutter_example/mygridlistview.dart';
import 'package:flutter_example/myrecyclerview.dart';
import 'package:flutter_example/myrowandcolumn.dart';
import 'package:flutter_example/mysizeoflayout.dart';
import 'package:flutter_example/mystartactivity/exampleone.dart';
import 'package:flutter_example/mystartactivity/mystartactivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("My Flutter Example"),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: MyList(),
            )),
        routes: {
          '/my_example_one': (context) => ExampleOne(),
        },
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("My Grid ListView"),
          onTap: () {
            _navTo(context, MyGridList());
          },
        ),
        ListTile(
          title: Text("My Row and Column"),
          onTap: () {
            _navTo(context, MyRowAndColumn());
          },
        ),
        ListTile(
          title: Text("My Size of Layout"),
          onTap: () {
            _navTo(context, MySizeOfLayout());
          },
        ),
        ListTile(
          title: Text("My Recycler View"),
          onTap: () {
            _navTo(context, MyRecyclerView());
          },
        ),
        ListTile(
          title: Text("My Start Activity"),
          onTap: () {
            _navTo(context, MyStartActivity());
          },
        ),
        ListTile(
          title: Text("My ConstraintLayout"),
          onTap: () {
            _navTo(context, MyConstraintLayout());
          },
        )
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
