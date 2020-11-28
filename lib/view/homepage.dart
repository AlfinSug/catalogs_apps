import 'package:catalog_apps/model/apps_model.dart';
import 'package:catalog_apps/model/dev_model.dart';
import 'package:catalog_apps/model/tab_model.dart';
import 'package:catalog_apps/style/assetUI.dart';
import 'package:catalog_apps/style/textUI.dart';
import 'package:catalog_apps/view/app_item.dart';
import 'package:catalog_apps/view/dev_item.dart' show DeveloperItem;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  PageController _pageController;

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 800),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(EvaIcons.bookmark),
        title: Text('Discover', style: TextUI.defaultH6),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              AssetUI.bgAppbar,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 50),
            alignment: Alignment.topLeft,
            child: Text(
              'Hi, Get the your favourite apps',
              style: TextUI.defaultH6,
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                top: 93,
              ),
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 15.0),
                  child: Row(
                    children: [
                      TabButton(
                        text: "Apps",
                        pageNumber: 0,
                        selectedPage: _selectedPage,
                        onPressed: () {
                          _changePage(0);
                        },
                      ),
                      TabButton(
                        text: "Developers",
                        pageNumber: 1,
                        selectedPage: _selectedPage,
                        onPressed: () {
                          _changePage(1);
                        },
                      ),
                    ],
                  ))),
          Expanded(
            child: PageView(
              onPageChanged: (int page) {
                setState(() {
                  _selectedPage = page;
                });
              },
              controller: _pageController,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
                    child: Center(
                        child: GridView.count(
                            crossAxisCount: 2,
                            children: List.generate(
                                appGrid.length, (index) => AppsItem(index))))),
                Container(
                  child: Container(
                      margin: EdgeInsets.only(top: 140.0),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        padding: EdgeInsets.all(8.0),
                        scrollDirection: Axis.vertical,
                        itemCount: devList.length,
                        itemBuilder: (context, index) {
                          return DeveloperItem(index);
                        },
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
