import 'package:flutter/material.dart';
import 'dart:math';

class Result extends StatelessWidget{

  Result({@required this.alas_jajargenjang, @required this.tinggi_jajargenjang});
  final int alas_jajargenjang;
  final int tinggi_jajargenjang;
  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (alas_jajargenjang * tinggi_jajargenjang * 1.0);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
        backgroundColor: Colors.pink[200]
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),
            ),

            Text(
              'Luas Jajar Genjang Adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),

            Text(
              '$hasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),

          ],
        ),
      ),
    );
  }
}