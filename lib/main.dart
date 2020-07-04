import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Latihan Pertama", home: new HalamanSatu()));
}

// class HalamanSatu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         body: new Center(
//       child: new Container(
//         color: Colors.blue[900],
//         width: 200.0,
//         height: 100.0,
//         child: new Center(
//           //   child: new Text(
//           //     "Lukman sefriyanto",
//           //     style: new TextStyle(
//           //         color: Colors.white, fontFamily: 'Serif', fontSize: 20.0),
//           //   ),
//           child: new Icon(Icons.favorite, color: Colors.yellow, size: 70.0),
//         ),
//       ),
//     ));
//   }
// }
class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("lukmansp"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
    );
  }
}
