import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

void main() {
  runApp(new MaterialApp(
    title: "List View",
    home: new Home(),
    // home: new Home(
    //   data: new List<String>.generate(300, (i) => "Ini data ke$i"),
    // )
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List dataJSON;

  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      dataJSON = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    stderr.write('hello:$dataJSON');
    return new Scaffold(
      appBar: new AppBar(title: new Text("List Data json")),
      body: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Card(
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      dataJSON[i]['title'],
                      style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                    new Text(
                      dataJSON[i]['body'],
                      style:
                          new TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// list array
// class Home extends StatelessWidget {
//   final List<String> data;
//   Home({this.data});
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(title: new Text("List View")),
//       body: new Container(
//           child: new ListView.builder(
//         itemCount: data.length,
//         itemBuilder: (context, index) {
//           return new ListTile(
//             leading: new Icon(Icons.widgets),
//             title: new Text("${data[index]}"),
//           );
//         },
//       )),
//     );
//   }
// }
