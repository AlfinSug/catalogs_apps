import 'dart:async';

import 'package:catalog_apps/routing_apps/ongkir_check/style/textUI.dart';
import 'package:catalog_apps/style/colorUI.dart';
import 'package:catalog_apps/view/homepage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AppsDetailPage extends StatelessWidget {
  static const routeName = '/app-details';

  final RoundedLoadingButtonController _btnController =
      new RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    final routeApps =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final id = routeApps['id'];

    _launchURL() async {
      const url = 'https://flutter.dev';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    void _launch() async {
      Timer(Duration(seconds: 2), () {
        _btnController.success();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => routeApps['class_app']));
      });
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              routeApps['banner'],
              fit: BoxFit.cover,
              width: 360.0,
              height: 242.0,
            ),
          ),
          Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[800]),
              margin: EdgeInsets.only(top: 50, left: 30),
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(EvaIcons.arrowBack),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: Colors.white,
                iconSize: 20,
              )),
          Container(
            margin: EdgeInsets.only(top: 250),
            alignment: Alignment.center,
            height: 550,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                routeApps['logo'],
                                width: 99.0,
                                height: 99.0,
                              )),
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      routeApps['name_app'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            EvaIcons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            routeApps['rate'],
                                          )
                                        ],
                                      ))
                                ],
                              ))
                        ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: RoundedLoadingButton(
                    child: Text('Launch', style: TextUI.defaultSubtitle1),
                    controller: _btnController,
                    onPressed: _launch,
                    height: 40,
                    width: 320,
                    color: Colors.black,
                    borderRadius: 5,
                    curve: Curves.bounceInOut,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ExpansionTile(
                    expandedAlignment: Alignment.topCenter,
                    title: Text(
                      'Kontak Developer',
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    childrenPadding: EdgeInsets.all(5),
                    children: <Widget>[
                      ListTile(
                        leading: Image.asset(
                          routeApps['img_dev'],
                          width: 50,
                          height: 46,
                        ),
                        title: Text(
                          routeApps['name_dev'],
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                          routeApps['npm'],
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: ColorUI.secondaryColor),
                        ),
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      ListTile(
                        leading: Icon(
                          EvaIcons.phone,
                          color: Colors.black,
                          size: 20,
                        ),
                        title: Text(
                          '+' + routeApps['notelp'],
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        trailing: RaisedButton(
                          onPressed: () async {
                            if (await canLaunch(routeApps['url_wa'])) {
                              await launch(routeApps['url_wa']);
                            } else {
                              throw "Couldn't launch URL";
                            }
                          },
                          color: Colors.black,
                          child: Text(
                            'Hubungi',
                            style: TextUI.defaultCaption,
                          ),
                        ),
                        contentPadding: EdgeInsets.only(left: 20, right: 15),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ExpansionTile(
                    title: Text(
                      'Deskripsi Singkat',
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    childrenPadding: EdgeInsets.all(8),
                    children: <Widget>[
                      ListTile(
                        leading: Icon(EvaIcons.text),
                        title: Text(
                          routeApps['desc'],
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: ColorUI.secondaryColor),
                        ),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
