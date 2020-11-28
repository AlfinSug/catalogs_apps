import 'package:catalog_apps/view/homepage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'jajar_result.dart';

void main() {
  runApp(MaterialApp(
    home: new Awal(),
    routes: <String, WidgetBuilder>{
      '/Result' : (BuildContext context) => new Awal(),
    },
  ));
}

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => new _AwalState();
}

class _AwalState extends State<Awal> {

  int alas = 0;
  int tinggi = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
            icon: Icon(EvaIcons.arrowBack),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        title: new Text('Luas Jajar Genjang'),
        centerTitle: true,
        backgroundColor: Colors.pink[200]
        
      ),

      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt){
                          setState(() {
                            alas = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Alas",
                          suffix: Text('cm'),
                          border: new OutlineInputBorder(
                           borderRadius: new BorderRadius.circular(10.0) 
                          ),
                          //filled: true,
                          hintText: 'Alas'
                        ),
                      ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(

                          onChanged: (txt){
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },

                          keyboardType: TextInputType.number,
                          maxLength: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              labelText: "Tinggi",
                              suffix: Text('cm'),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                              ),
                              //filled: true,
                              hintText: 'Tinggi'
                          ),
                        ),
                      ),
                  ],
                ),
                
                new Padding(padding: new EdgeInsets.only(top:20.0)),

                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: (){
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new Result(alas_jajargenjang: alas, tinggi_jajargenjang: tinggi),
                        );
                        Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.pink[200],
                    textColor: Colors.black,
                    child: Text(
                      'Hasil Hitung',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                
              ]
            ),
          )
        ]
      ),
    );
  }
}