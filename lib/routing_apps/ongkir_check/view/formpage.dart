import 'package:animated_button/animated_button.dart';
import 'package:catalog_apps/routing_apps/ongkir_check/style/assetUI.dart';
import 'package:catalog_apps/routing_apps/ongkir_check/style/colorUI.dart';
import 'package:catalog_apps/routing_apps/ongkir_check/style/textUI.dart';
import 'package:catalog_apps/view/homepage.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:hexcolor/hexcolor.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var _controllerAsal = new TextEditingController();
  var _controllerTujuan = new TextEditingController();

  double _weight = 0.0;
  int priceSameCity = 20000;
  int priceDifferentCity = 50000;
  int priceWeight = 3000;
  double total = 0;

  static Map<String, dynamic> formData;
  List<String> kotaAsal = [
    'Surabaya',
    'Jakarta',
    'Bandung',
    'Bekasi',
    'Malang',
    'Jombang',
    'Blitar',
  ];
  List<String> kotaTujuan = [
    'Surabaya',
    'Jakarta',
    'Bandung',
    'Bekasi',
    'Malang',
    'Jombang',
    'Blitar',
  ];

  _FormPageState() {
    formData = {
      'KotaAsal': '',
      'KotaTujuan': '',
    };
  }

  void cekNow() {
    setState(() {
      if (formData['KotaAsal'] == formData['KotaTujuan']) {
        if (_weight > 0) {
          total = (_weight * priceWeight) + priceSameCity;
        } else {
          SnackBar(content: Text('Berat Barang tidak boleh kosong!'));
        }
      } else {
        if (_weight > 0) {
          total = (_weight * priceWeight) + priceDifferentCity;
        } else {
          SnackBar(content: Text('Berat Barang tidak boleh kosong!'));
        }
      }

      showModalBottomSheet(
          enableDrag: true,
          elevation: 2,
          context: context,
          builder: (context) {
            return Container(
                height: 650,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(10),
                        topRight: const Radius.circular(10))),
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Pilih Jasa Pengiriman",
                            style: TextUI.secondarybodyText1,
                          ),
                        ),
                        Divider(
                          height: 1.5,
                          color: ColorUI.secondaryColor,
                        ),
                        ListTile(
                          leading: Image.asset(
                            AssetUI.ic_jne,
                            alignment: Alignment.center,
                          ),
                          title: Text('JNE', style: TextUI.secondarybodyText1),
                          subtitle: Text(
                            '2 Hari',
                            style: TextUI.secondarySubtitle2,
                          ),
                          hoverColor: ColorUI.primaryColor,
                          trailing: Text(
                            'IDR ${total + 15000}',
                            style: TextUI.dangerbodyText1,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                            leading: Image.asset(
                              AssetUI.ic_jnt,
                              alignment: Alignment.center,
                            ),
                            title: Text('J&T Express',
                                style: TextUI.secondarybodyText1),
                            subtitle: Text(
                              '2-3 Hari',
                              style: TextUI.secondarySubtitle2,
                            ),
                            hoverColor: ColorUI.primaryColor,
                            trailing: Text(
                              'IDR ${total + 13000}',
                              style: TextUI.dangerbodyText1,
                            ),
                            onTap: () {}),
                        ListTile(
                            leading: Image.asset(
                              AssetUI.ic_tiki,
                              alignment: Alignment.center,
                            ),
                            title:
                                Text('Tiki', style: TextUI.secondarybodyText1),
                            subtitle: Text(
                              '3-4 Hari',
                              style: TextUI.secondarySubtitle2,
                            ),
                            hoverColor: ColorUI.primaryColor,
                            trailing: Text(
                              'IDR ${total + 12500}',
                              style: TextUI.dangerbodyText1,
                            ),
                            onTap: () {}),
                        ListTile(
                            leading: Image.asset(
                              AssetUI.ic_sicepat,
                              alignment: Alignment.center,
                            ),
                            title: Text('Si Cepat Express',
                                style: TextUI.secondarybodyText1),
                            subtitle: Text(
                              '3 Hari',
                              style: TextUI.secondarySubtitle2,
                            ),
                            hoverColor: ColorUI.primaryColor,
                            trailing: Text(
                              'IDR ${total + 12000}',
                              style: TextUI.dangerbodyText1,
                            ),
                            onTap: () {}),
                        ListTile(
                            leading: Image.asset(
                              AssetUI.ic_pos,
                              alignment: Alignment.center,
                            ),
                            title: Text('POS Indonesia',
                                style: TextUI.secondarybodyText1),
                            subtitle: Text(
                              '1-2 Hari',
                              style: TextUI.secondarySubtitle2,
                            ),
                            hoverColor: ColorUI.primaryColor,
                            trailing: Text('IDR ${total + 18000}',
                                style: TextUI.dangerbodyText1),
                            onTap: () {}),
                      ],
                    )));
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#EB9310'),
        shadowColor: HexColor('#EB9310'),
        title: Text('Form Cek Ongkir', style: TextUI.defaultH6),
        leading: InkWell(
            child: Icon(
              EvaIcons.arrowBack,
              color: ColorUI.defaultColor,
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()))),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AssetUI.img_appbar,
                width: _width,
                height: 100.0,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(25.0, 35.0, 25.0, 25.0),
              decoration: BoxDecoration(
                  color: ColorUI.defaultColor,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 30.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 5),
                      child: DropDownField(
                        icon: Icon(
                          EvaIcons.pinOutline,
                          color: ColorUI.secondaryColor,
                        ),
                        value: formData['KotaAsal'],
                        controller: _controllerAsal,
                        textStyle: TextUI.secondaryOverline,
                        hintText: 'Cari Kota Asal',
                        hintStyle: TextUI.secondaryOverline,
                        labelStyle: TextUI.secondaryOverline,
                        labelText: 'Pick Up',
                        items: kotaAsal,
                        strict: false,
                        setter: (dynamic valueAsal) {
                          formData['KotaAsal'] = valueAsal;
                        },
                        itemsVisibleInDropdown: 3,
                        onValueChanged: (value) {
                          formData['KotaAsal'] = value;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: DropDownField(
                        icon: Icon(
                          EvaIcons.mapOutline,
                          color: ColorUI.secondaryColor,
                        ),
                        value: formData['KotaTujuan'],
                        controller: _controllerTujuan,
                        textStyle: TextUI.secondaryOverline,
                        hintText: 'Cari Kota Tujuan',
                        hintStyle: TextUI.secondaryOverline,
                        labelStyle: TextUI.secondaryOverline,
                        labelText: 'Tujuan',
                        items: kotaTujuan,
                        strict: false,
                        setter: (dynamic valueTujuan) {
                          formData['KotaTujuan'] = valueTujuan;
                        },
                        itemsVisibleInDropdown: 3,
                        onValueChanged: (value) =>
                            formData['KotaTujuan'] = value,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 3),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.shoppingBagOutline,
                                    color: ColorUI.secondaryColor,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    'Berat Barang ($_weight Kg)',
                                    style: TextUI.secondarySubtitle2,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              alignment: Alignment.center,
                              child: FlutterSlider(
                                values: [_weight],
                                min: 0,
                                max: 100,
                                handlerHeight: 30,
                                trackBar: FlutterSliderTrackBar(
                                    activeTrackBarHeight: 10.0,
                                    inactiveTrackBarHeight: 10.0,
                                    activeTrackBar: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: ColorUI.primaryColor),
                                    inactiveTrackBar: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: HexColor('#bdc3c7'))),
                                handler: FlutterSliderHandler(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: ColorUI.primaryColor),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      EvaIcons.shoppingBag,
                                      color: ColorUI.defaultColor,
                                    ),
                                  ),
                                )),
                                tooltip: FlutterSliderTooltip(
                                    textStyle: TextUI.defaultSubtitle1,
                                    disableAnimation: false,
                                    boxStyle: FlutterSliderTooltipBox(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: ColorUI.primaryColor))),
                                onDragging:
                                    (handlerIndex, lowerValue, upperValue) {
                                  _weight = lowerValue;
                                  setState(() {
                                    // _weight = upperValue;
                                  });
                                },
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        alignment: Alignment.center,
                        child: AnimatedButton(
                          height: 50.0,
                          shadowDegree: ShadowDegree.dark,
                          onPressed: () => cekNow(),
                          child: Text(
                            'Cek Sekarang!',
                            style: TextUI.secondarybodyText1,
                          ),
                          color: ColorUI.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
