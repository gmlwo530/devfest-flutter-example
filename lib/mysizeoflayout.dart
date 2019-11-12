import 'package:flutter/material.dart';

class MySizeOfLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("My Size Of Layout"),
            ),
            body: Column(
              children: <Widget>[
                Flexible(
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: MatchParentAndMatchParent(),
                        flex: 1,
                      ),
                      Flexible(
                        child: MatchParentAndWrapContent(),
                        flex: 1,
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: WrapContentAndMatchParent(),
                        flex: 1,
                      ),
                      Flexible(
                        child: WrapContentAndWrapContent(),
                        flex: 1,
                      )
                    ],
                  ),
                  flex: 1,
                )
              ],
            ));
  }
}

class MatchParentAndMatchParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightBlue[400],
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black.withOpacity(0.7),
        child: Center(
          child: Text("Width : match_parent\nHeight : match_parent",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
      ),
    );
  }
}

class MatchParentAndWrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightGreen[400],
      child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.black.withOpacity(0.7),
              child: Text("Width : match_parent\nHeight : wrap_content",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0))
            )
      ],
      ),
    );
  }
}

class WrapContentAndMatchParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.orange[400],
    );
  }
}

class WrapContentAndWrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red[400],
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                color: Colors.black.withOpacity(0.7),
                child: Text("Width : wrap_content\nHeight : wrap_content",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0))
            )
          ],
        ),
    );
  }
}
