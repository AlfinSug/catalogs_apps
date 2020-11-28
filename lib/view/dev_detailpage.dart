import 'package:catalog_apps/style/colorUI.dart';
import 'package:catalog_apps/view/homepage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperDetailPage extends StatelessWidget {
  static const routeName = '/dev-details';

  @override
  Widget build(BuildContext context) {
    final routeDev =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final id = routeDev['id'];

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              routeDev['img'],
              fit: BoxFit.cover,
              width: 360.0,
              height: 433.0,
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
            margin: EdgeInsets.only(top: 450),
            alignment: Alignment.bottomCenter,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 2),
                    alignment: Alignment.topCenter,
                    child: Text(
                      routeDev['name_dev'],
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    child: Text(routeDev['npm'],
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: ColorUI.secondaryColor)),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: ExpansionTile(
                    title: Text(
                      'Your Apps',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    childrenPadding: EdgeInsets.all(15),
                    children: <Widget>[
                      ListTile(
                        leading: Image.asset(routeDev['logo']),
                        title: Text(
                          routeDev['name_app'],
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
