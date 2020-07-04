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
// col&row
// class HalamanSatu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow[200],
//       appBar: new AppBar(
//         backgroundColor: Colors.red[800],
//         leading: new Icon(Icons.home),
//         title: new Center(
//           child: new Text("lukmansp"),
//         ),
//         actions: <Widget>[new Icon(Icons.search)],
//       ),
//       body: new Container(
//         child: new Column(
//           children: <Widget>[
//             new Icon(
//               Icons.local_pizza,
//               size: 70.0,
//               color: Colors.red,
//             ),
//             new Icon(Icons.cake, size: 70.0, color: Colors.red),
//             new Row(
//               children: <Widget>[
//                 new Icon(
//                   Icons.donut_large,
//                   size: 70.0,
//                   color: Colors.red,
//                 ),
//                 new Icon(
//                   Icons.panorama_fish_eye,
//                   size: 70.0,
//                   color: Colors.red,
//                 ),
//                 new Icon(
//                   Icons.donut_large,
//                   size: 70.0,
//                   color: Colors.red,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// end
class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("card & parsing")),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(
              icon: Icons.home,
              teks: "home",
              warnaicon: Colors.brown,
            ),
            new CardSaya(
              icon: Icons.favorite,
              teks: "favorite",
              warnaicon: Colors.pink,
            ),
            new CardSaya(
              icon: Icons.place,
              teks: "place",
              warnaicon: Colors.blue,
            ),
            new CardSaya(
              icon: Icons.settings,
              teks: "setting",
              warnaicon: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({this.icon, this.teks, this.warnaicon});
  final IconData icon;
  final String teks;
  final Color warnaicon;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Icon(
                icon,
                size: 50.0,
                color: warnaicon,
              ),
              new Text(
                teks,
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ));
  }
}
