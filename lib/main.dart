import 'package:catalog_apps/view/app_detailpage.dart';
import 'package:catalog_apps/view/dev_detailpage.dart';
import 'package:catalog_apps/view/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog Apps',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        DeveloperDetailPage.routeName: (context) => DeveloperDetailPage(),
        AppsDetailPage.routeName: (context) => AppsDetailPage()
      },
    );
  }
}
