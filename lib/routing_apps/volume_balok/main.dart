import 'package:catalog_apps/view/homepage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: ('Penghitung Volume Balok'),
    home: home(),
  ));
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final field_panjang = TextEditingController();
  final field_tinggi = TextEditingController();
  final field_lebar = TextEditingController();
  int hasil;
  String hasilnya = "";
  void hitung() {
    setState(() {
      hasil = int.parse(field_panjang.text) *
          int.parse(field_lebar.text) *
          int.parse(field_tinggi.text);
      hasilnya = hasil.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(EvaIcons.arrowBack),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          title: Text("Penghitung Volume Balok")),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(25.0),
              child: TextField(
                controller: field_panjang,
                decoration: InputDecoration(
                  labelText: "Panjang",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25.0),
              child: TextField(
                controller: field_lebar,
                decoration: InputDecoration(
                  labelText: "lebar",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25.0),
              child: TextField(
                controller: field_tinggi,
                decoration: InputDecoration(
                  labelText: "tinggi",
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                color: Colors.blue[800],
                onPressed: () {
                  hitung();
                },
                child: Text(
                  "HITUNG",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text(
                  "$hasilnya",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
