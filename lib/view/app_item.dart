import 'package:catalog_apps/model/apps_model.dart';
import 'package:catalog_apps/view/app_detailpage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppsItem extends StatelessWidget {
  final int index_apps;

  AppsItem(this.index_apps);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(AppsDetailPage.routeName, arguments: {
            'id': appGrid[index_apps].id_apps,
            'banner': appGrid[index_apps].bannerApp,
            'desc': appGrid[index_apps].descApp,
            'img_dev': appGrid[index_apps].img_dev,
            'name_dev': appGrid[index_apps].name_dev,
            'npm': appGrid[index_apps].npm_dev,
            'rate': appGrid[index_apps].rate.toString(),
            'logo': appGrid[index_apps].logoApp,
            'name_app': appGrid[index_apps].nameApp,
            'class_app': appGrid[index_apps].classApps,
            'notelp': appGrid[index_apps].notelp,
            'url_wa': appGrid[index_apps].url_wa,
          });
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(7.5, 10, 7.5, 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset.zero,
                  blurRadius: 3,
                  spreadRadius: 1,
                )
              ]),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: appGrid[index_apps].id_apps,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      appGrid[index_apps].logoApp,
                      width: 59,
                      height: 54,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    appGrid[index_apps].nameApp,
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        EvaIcons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        appGrid[index_apps].rate.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
