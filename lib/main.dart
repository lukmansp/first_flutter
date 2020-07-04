import 'package:flutter/material.dart';
import './detail.dart';

void main() {
  runApp(new MaterialApp(title: "Sidebar", home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String gambar1 =
      "https://media-exp1.licdn.com/dms/image/C5603AQEPcEh5c3BEgQ/profile-displayphoto-shrink_100_100/0?e=1598486400&v=beta&t=QE3Ofpbf9ZdzHWyb6UsQJudYC8Ph6UfDeRLM2wTYLO4";
  String gambar2 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ6z0MHNAexivsuPDBXV8HcAzL5pZTIHBVAYw&usqp=CAU";
  String gambar3 =
      "https://www.pngfind.com/pngs/m/663-6638156_minato-and-naruto-render-png-download-minato-namikaze.png";
  String backup;
  String nama1 = "Lukman sefriyanto";
  String nama2 = "Namikaze minato";
  String backupNama;
  String email1 = "lukmanssefriyanto@gmail.com";
  String email2 = "yellowflash@gmail.com";
  String backupemail;
  void gantiuser() {
    this.setState(() {
      backup = gambar1;
      gambar1 = gambar3;
      gambar3 = backup;
      backupNama = nama1;
      nama1 = nama2;
      nama2 = backupNama;
      backupemail = email1;
      email1 = email2;
      email2 = backupemail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Sidebar (Drawer)"),
        backgroundColor: Colors.red[700],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(nama1),
              accountEmail: new Text(email1),
              currentAccountPicture: new GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Detail(nama: nama1, gambar: gambar1)));
                },
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(gambar1),
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(gambar2), fit: BoxFit.cover)),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => gantiuser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(gambar3),
                  ),
                )
              ],
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
