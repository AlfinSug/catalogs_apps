import 'package:catalog_apps/view/homepage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Omset()));
}

class Omset extends StatefulWidget {
  @override
  _OmsetState createState() => new _OmsetState();
}

class _OmsetState extends State<Omset> {
  var americano, expresso, ks, tot;

  TextEditingController controllerAmericano = new TextEditingController();
  TextEditingController controllerExpresso = new TextEditingController();
  TextEditingController controllerKopiSusu = new TextEditingController();

  void kirimdata() {
    if (checkNumbers())
      setState(() {
        tot = (americano * 20000) + (expresso * 25000) + (ks * 10000);
      });

    AlertDialog alertDialog = new AlertDialog(
        content: new Container(
      height: 300.0,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Americano : \n${controllerAmericano.text} pcs x Rp20.000"),
          new Text("Expresso : \n${controllerExpresso.text} pcs x Rp25.000"),
          new Text("Kopi Susu  : \n${controllerKopiSusu.text}pcs x Rp10.000"),
          new Text("~~~~~~~~~~~~~~~"),
          new Text("Omzet = $tot"),
          new Text("~~~~~~~~~~~~~~~"),
          new RaisedButton(
            child: new Text("Cetak"),
            onPressed: null,
          ),
          new RaisedButton(
            child: new Text("Kembali"),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    ));
    showDialog(context: context, child: alertDialog);
  }

  bool checkNumbers() {
    try {
      americano = int.parse(controllerAmericano.text);
      expresso = int.parse(controllerExpresso.text);
      ks = int.parse(controllerKopiSusu.text);
      return true;
    } on FormatException {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Harap Masukkan Angka')));
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(EvaIcons.arrowBack),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        title: new Text("Janji Jawa"),
        backgroundColor: Colors.lime,
      ),
      body: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(children: <Widget>[
          new RichText(
            text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: Colors.black,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(text: "Jumlah Kopi Yang Terjual Pada Hari ini"),
                ]),
          ),
          new Padding(padding: new EdgeInsets.only(top: 15.0)),
          new TextField(
              controller: controllerAmericano,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "0 pcs",
                  labelText: "Americano",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)))),
          new Padding(padding: new EdgeInsets.only(top: 15.0)),
          new TextField(
              controller: controllerExpresso,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "0 pcs",
                  labelText: "Expresso",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)))),
          new Padding(padding: new EdgeInsets.only(top: 15.0)),
          new TextField(
              controller: controllerKopiSusu,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "0 pcs",
                  labelText: "Kopi Susu",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)))),
          new RaisedButton(
            child: new Text("OK"),
            color: Colors.red,
            onPressed: () {
              kirimdata();
            },
          ),
        ]),
      ),
    );
  }
}
