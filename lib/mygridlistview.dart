import 'package:flutter/material.dart';


class MyGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index){
          return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              )
          );
        })
    );
  }
}