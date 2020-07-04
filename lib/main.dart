import 'package:flutter/material.dart';
import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal.headset.dart' as headset;
import './hal_smartphone.dart' as hp;

void main() {
  runApp(new MaterialApp(
    title: "Latihan Pertama",
    home: new HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new HalamanSatu(),
      // '/Haldua': (BuildContext context) => new HalamanDua(),
    },
  ));
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
// card and parsing
// class HalamanSatu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(title: new Text("card & parsing")),
//       body: new Container(
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             new CardSaya(
//               icon: Icons.home,
//               teks: "home",
//               warnaicon: Colors.brown,
//             ),
//             new CardSaya(
//               icon: Icons.favorite,
//               teks: "favorite",
//               warnaicon: Colors.pink,
//             ),
//             new CardSaya(
//               icon: Icons.place,
//               teks: "place",
//               warnaicon: Colors.blue,
//             ),
//             new CardSaya(
//               icon: Icons.settings,
//               teks: "setting",
//               warnaicon: Colors.black,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CardSaya extends StatelessWidget {
//   CardSaya({this.icon, this.teks, this.warnaicon});
//   final IconData icon;
//   final String teks;
//   final Color warnaicon;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: new EdgeInsets.all(10.0),
//         child: new Card(
//           child: new Column(
//             children: <Widget>[
//               new Icon(
//                 icon,
//                 size: 50.0,
//                 color: warnaicon,
//               ),
//               new Text(
//                 teks,
//                 style: TextStyle(fontSize: 20.0),
//               )
//             ],
//           ),
//         ));
//   }
// }
// end card

// class HalamanSatu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text("Music"),
//       ),
//       body: new Center(
//           child: new IconButton(
//               icon: new Icon(Icons.headset, size: 50.0),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/Haldua');
//               })),
//     );
//   }
// }
// navigation
// class HalamanDua extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text("Speaker"),
//       ),
//       body: new Center(
//           child: new IconButton(
//               icon: new Icon(
//                 Icons.speaker,
//                 size: 50.0,
//                 color: Colors.red,
//               ),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/Halsatu');
//               })),
//     );
//   }
// }
class HalamanSatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer),
              text: 'Komputer',
            ),
            new Tab(icon: new Icon(Icons.headset), text: 'headset'),
            new Tab(
              icon: new Icon(Icons.radio),
              text: 'Radio',
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
              text: 'Smartphone',
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headset.Headset(),
          new radio.Radio(),
          new hp.Smartphone()
        ],
      ),
      bottomNavigationBar: new Material(
          color: Colors.amber,
          child: new TabBar(controller: controller, tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer),
            ),
            new Tab(
              icon: new Icon(Icons.headset),
            ),
            new Tab(
              icon: new Icon(Icons.radio),
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
            ),
          ])),
    );
  }
}
