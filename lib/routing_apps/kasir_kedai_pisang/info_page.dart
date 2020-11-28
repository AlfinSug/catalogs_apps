import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Information"),
        centerTitle: true,
      ), // AppBar
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/img/logo.jpg'),
                              fit: BoxFit.cover) // DecorationImage
                          ), // BoxDecoration
                    ), // Container
                  ), // Align
                ), // Padding
              ],
            ), // Stack
          ), // Container

          Container(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                SizedBox(height: 18),
                Text(
                  'kedaibv@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ), // TextStyle
                ),
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ), // Container // SizedBox
              ],
            ), // Column
          ), // Container

          Container(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Kedai Pisang B&V merupakan salah satu UMKM di Sidoarjo',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ), // Container // SizedBox
                SizedBox(height: 5),
                Text(
                  'yang menjual berbagai jenis olahan pisang.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ), // Container // SizedBox
                SizedBox(height: 5),
                Text(
                  'kini telah tersedia di Prambon dan Krian.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ), // Container // SizedBox
                SizedBox(height: 5),
                Text(
                  'Untuk Pusatnya berada di wilayah Prambon Sidoarjo.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ), // Container // SizedBox
                SizedBox(height: 5),
                Text(
                  'Masalah rasa tak ada tandingannya.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ), // Container // SizedBox
              ],
            ), // Column
          ) // Container
        ],
      ), // ListView
    );
  }
}
