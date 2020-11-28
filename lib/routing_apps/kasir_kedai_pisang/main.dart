import 'package:catalog_apps/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:catalog_apps/routing_apps/kasir_kedai_pisang/home_page.dart';
import 'info_page.dart';
import 'add_page.dart';
import 'product_page.dart';
import 'cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kedai Pisang B&V',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          accentColor: Colors.yellow,
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
      home: Home(),
      routes: <String, WidgetBuilder>{
        'page1': (BuildContext context) => new Home(),
        'page2': (BuildContext context) => new MyProfil(),
      },
    ); // Materian App
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Cart> _carts = [];
  void _openModal(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return AddItem(_addNewItem);
        });
  }

  void _addNewItem(String title, String nama, double harga, int qty) {
    final newItem = Cart(
        id: DateTime.now().toString(),
        title: title,
        nama: nama,
        harga: harga,
        qty: qty);
    setState(() {
      _carts.add(newItem);
    });
  }

  void _resetCarts() {
    setState(() {
      _carts.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.playlist_add, color: Colors.black),
          onPressed: () => _openModal(context)), // FloatingActionButton

      appBar: AppBar(
        leading: new IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ), // IconButton
        title: Text("Kedai Pisang B&V"),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.clear_all,
              color: Colors.white,
            ),
            onPressed: () => _resetCarts(),
          ), //FlatButton
        ], // <Widget>[]
      ), // AppBar

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomePages(_carts),
            ProductPage(_carts),
          ], // <Widget>[]
        ), // Column
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
