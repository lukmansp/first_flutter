import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Input Text, alert & snackbar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String teks = "";
  TextEditingController controllerInput = new TextEditingController();
  TextEditingController controllerAlert = new TextEditingController();
  TextEditingController controllerSnackbar = new TextEditingController();
  final GlobalKey<ScaffoldState> _scafoldState = new GlobalKey<ScaffoldState>();

  void _snackbar(String str) {
    if (str.isEmpty) return;
    _scafoldState.currentState.showSnackBar(new SnackBar(
      content: new Text(str, style: new TextStyle(fontSize: 20.0)),
      duration: new Duration(seconds: 3),
    ));
  }

  void _alertdialog(String str) {
    if (str.isEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
        str,
        style: new TextStyle(fontSize: 20.0),
      ),
      actions: <Widget>[
        new RaisedButton(
            color: Colors.purple,
            child: new Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scafoldState,
      appBar: new AppBar(
        title: new Text("Input text, alert & snackbar"),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: "Tulis disini",
              ),
              // onChanged: (String str) {
              //   setState(() {
              //     teks = str;
              //   });
              // },
              controller: controllerInput,
              onSubmitted: (String str) {
                setState(() {
                  teks = str + '\n' + teks;
                  controllerInput.text = "";
                });
              },
            ),
            new Text(
              teks,
              style: new TextStyle(fontSize: 20.0),
            ),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Tulis untuk alert",
              ),
              controller: controllerAlert,
              onSubmitted: (String str) {
                _alertdialog(str);
                controllerAlert.text = "";
              },
            ),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Tulis untuk snackbar",
              ),
              controller: controllerSnackbar,
              onSubmitted: (String str) {
                _snackbar(str);
                controllerSnackbar.text = "";
              },
            ),
          ],
        ),
      ),
    );
  }
}
