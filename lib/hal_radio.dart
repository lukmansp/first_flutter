import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
          child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Text(
            "Radio",
            style: new TextStyle(fontSize: 30.0),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Image(
            image: new NetworkImage(
                "https://png.pngtree.com/element_pic/00/16/08/3057c4a13a8fb59.jpg"),
            width: 200.0,
          )
        ],
      )),
    );
  }
}
