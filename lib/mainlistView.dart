import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "ListView", home: new Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber[900],
        title: new Text("Listview"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListData(
            gambar:
                "https://png.pngtree.com/element_pic/00/16/08/3057c4a13a8fb59.jpg",
            judul: "Radio",
          ),
          new ListData(
            gambar: "https://pngimg.com/uploads/radio/radio_PNG19298.png",
            judul: "Radio Tua",
          ),
          new ListData(
            gambar:
                "https://iradiofm.com/wp-content/uploads/2018/09/radio-jadul.jpg",
            judul: "Radio jadul banget",
          ),
          new ListData(
            gambar:
                "https://iradiofm.com/wp-content/uploads/2018/09/radio-jadul.jpg",
            judul: "Radio jadul banget",
          ),
          new ListData(
            gambar:
                "https://iradiofm.com/wp-content/uploads/2018/09/radio-jadul.jpg",
            judul: "Radio jadul banget",
          ),
          new ListData(
            gambar:
                "https://iradiofm.com/wp-content/uploads/2018/09/radio-jadul.jpg",
            judul: "Radio jadul banget",
          ),
          // new ListTile(
          //   leading: new Icon(Icons.speaker),
          //   title: new Text("speaker"),
          // )
        ],
      ),
    );
  }
}

class ListData extends StatelessWidget {
  ListData({this.gambar, this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar),
              width: 100.0,
            ),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      judul,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    new Text(
                      "Ini adalah deskripsi ..",
                      style: new TextStyle(fontSize: 15.0, color: Colors.grey),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
