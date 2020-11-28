import 'package:catalog_apps/model/apps_model.dart';
import 'package:catalog_apps/model/dev_model.dart';
import 'package:catalog_apps/view/dev_detailpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperItem extends StatelessWidget {
  final int index_dev;

  DeveloperItem(this.index_dev);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DeveloperDetailPage.routeName, arguments: {
          'id': devList[index_dev].id_dev,
          'img': devList[index_dev].img,
          'name_dev': devList[index_dev].name_dev,
          'npm': devList[index_dev].npm.toString(),
          'logo': devList[index_dev].logoApp,
          'name_app': devList[index_dev].nameApp,
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(25, 10, 25, 4),
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
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Hero(
                      tag: devList[index_dev].id_dev,
                      child: Image.asset(
                        devList[index_dev].img,
                        width: 50,
                        height: 46,
                      )),
                ),
                SizedBox(width: 10),
                Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          devList[index_dev].name_dev,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          devList[index_dev].npm,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}
