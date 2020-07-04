import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Latihan Pertama", home: new LatihanPertama()));
}

class LatihanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
      child: new Text("hellor world",
          style: TextStyle(
              fontSize: 50.0,
              color: Colors.blue[800],
              fontWeight: FontWeight.w500)),
    ));
  }
}
