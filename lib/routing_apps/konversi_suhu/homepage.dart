import 'package:animated_button/animated_button.dart';
import 'package:catalog_apps/style/assetUI.dart';
import 'package:catalog_apps/view/homepage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class KonversiPage extends StatefulWidget {
  @override
  _KonversiPageState createState() => _KonversiPageState();
}

class _KonversiPageState extends State<KonversiPage> {
  double celcius, fahrenheit, reamur, kelvin;
  String hasilF = "";
  String hasilR = "";
  String hasilK = "";
  var myCelcius = TextEditingController();

  conversi() {
    setState(() {
      fahrenheit = 1.8 * int.parse(myCelcius.text) + 32;
      hasilF = fahrenheit.toString();
      return fahrenheit;
    });
  }

  conversi1() {
    setState(() {
      reamur = 0.8 * int.parse(myCelcius.text);
      hasilR = reamur.toString();
      return reamur;
    });
  }

  conversi2() {
    setState(() {
      kelvin = int.parse(myCelcius.text) + 273.0;
      hasilK = kelvin.toString();
      return kelvin;
    });
  }

  reset() {
    setState(() {
      hasilF = "";
      hasilR = "";
      hasilK = "";
      myCelcius.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#2c2c54'),
          leading: IconButton(
            icon: Icon(EvaIcons.arrowBack),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          title: Text(
            'Konversi Suhu',
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: HexColor('#f7f1e3')),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30.0, top: 40),
                alignment: Alignment.center,
                child: Text(
                  'Hitung Suhu Yuk!',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#2c2c54'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                alignment: Alignment.center,
                child: Image.asset(
                  AssetUI.logo_suhu,
                  width: 250.0,
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(25.0, 12.0, 25.0, 25.0),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: myCelcius,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(hintText: 'Input Suhu Dalam Celcius'),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(40.0, 10.0, 12.0, 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: AnimatedButton(
                              width: 70,
                              height: 40,
                              onPressed: () {
                                conversi();
                              },
                              color: HexColor('#2c2c54'),
                              child: Text(
                                'F*',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#f7f1e3')),
                              ))),
                      Expanded(
                          flex: 1,
                          child: AnimatedButton(
                              width: 70,
                              height: 40,
                              onPressed: () {
                                conversi1();
                              },
                              color: HexColor('#2c2c54'),
                              child: Text(
                                'R*',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#f7f1e3')),
                              ))),
                      Expanded(
                          flex: 1,
                          child: AnimatedButton(
                              width: 70,
                              height: 40,
                              onPressed: () {
                                conversi2();
                              },
                              color: HexColor('#2c2c54'),
                              child: Text(
                                'K*',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#f7f1e3')),
                              ))),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(60.0, 1.0, 0.0, 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text(
                            hasilF,
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#2c2c54')),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            hasilR,
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#2c2c54')),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            hasilK,
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#2c2c54')),
                          )),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: AnimatedButton(
                      width: 100,
                      height: 40,
                      onPressed: () {
                        reset();
                      },
                      color: HexColor('#2c2c54'),
                      child: Text(
                        'Reset',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#f7f1e3')),
                      ))),
            ],
          ),
        ));
  }
}
