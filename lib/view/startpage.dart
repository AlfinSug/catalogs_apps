import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:catalog_apps/style/assetUI.dart';
import 'package:catalog_apps/style/textUI.dart';
import 'package:catalog_apps/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final RoundedLoadingButtonController _btnController =
      new RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 2), () {
      _btnController.success();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(AssetUI.logo,
                      width: MediaQuery.of(context).size.width * 0.16),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text('Catalog Apps',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: CarouselSlider(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              items: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset.zero,
                            spreadRadius: 1)
                      ],
                      image: DecorationImage(
                          image: AssetImage(AssetUI.banner1),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset.zero,
                            spreadRadius: 1)
                      ],
                      image: DecorationImage(
                          image: AssetImage(AssetUI.banner2),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset.zero,
                            spreadRadius: 1)
                      ],
                      image: DecorationImage(
                          image: AssetImage(AssetUI.banner3),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset.zero,
                            spreadRadius: 1)
                      ],
                      image: DecorationImage(
                          image: AssetImage(AssetUI.banner4),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset.zero,
                            spreadRadius: 1)
                      ],
                      image: DecorationImage(
                          image: AssetImage(AssetUI.banner5),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset.zero,
                            spreadRadius: 1)
                      ],
                      image: DecorationImage(
                          image: AssetImage(AssetUI.banner6),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(70, 30, 70, 10),
              child: Text(
                'Get the your Favourite Apps',
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              )),
          Container(
              child: Text(
            'Lorem Ipsum sit dolor amet',
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
            textAlign: TextAlign.center,
          )),
          Container(
            margin: EdgeInsets.only(top: 150, left: 15, right: 15),
            child: RoundedLoadingButton(
              child: Text('Start', style: TextUI.defaultSubtitle1),
              controller: _btnController,
              onPressed: _doSomething,
              color: Colors.black,
              borderRadius: 5,
              width: 320,
            ),
          )
        ],
      ),
    );
  }
}
