import 'package:flutter/material.dart';

class MyRecyclerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("My Recycler View"),
          ),
          body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: MyHorizontalList(),
                    ),
                    flex: 1,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: MyVerticalList(),
                    ),
                    flex: 2,
                  )
                ],
              )),
        );
  }
}

class MyHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(20, (index) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Text("Item${index + 1}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold))),
          );
        }));
  }
}

//class MyHorizontalList extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//      scrollDirection: Axis.horizontal,
//      children: <Widget>[
//        Container(
//          padding: EdgeInsets.all(20.0),
//          child: Center(child: Text("Item1", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold))),
//        ),
//        Container(
//          padding: EdgeInsets.all(20.0),
//          child: Center(child: Text("Item2", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold))),
//        ),
//        Container(
//          padding: EdgeInsets.all(20.0),
//          child: Center(child: Text("Item3", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold))),
//        )
//      ],
//    );
//  }
//}

class MyVerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10000,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print("Item${index+1}");
            },
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                  child: Text("Item${index + 1}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold))),
            ),
          );
        });
  }
}

