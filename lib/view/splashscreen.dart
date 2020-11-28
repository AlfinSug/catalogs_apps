import 'dart:async';

import 'package:catalog_apps/style/assetUI.dart';
import 'package:catalog_apps/view/startpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => StartPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 100.0),
          Image.asset(
            AssetUI.logo,
            height: 100.0,
          ),
          Text(
            'Catalog Apps',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(height: 100.0),
          SpinKitRipple(color: Colors.red),
          SizedBox(
            height: 300.0,
          ),
          new RichText(
            text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: Colors.black,
                  height: 1.5,
                ),
                children: <TextSpan>[TextSpan(text: "Made With")]),
          ),
          Image.asset(
            AssetUI.heart,
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
