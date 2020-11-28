import 'package:catalog_apps/routing_apps/ongkir_check/style/colorUI.dart';
import 'package:catalog_apps/routing_apps/ongkir_check/style/textUI.dart';
import 'package:flutter/material.dart';

class ItemDelivery extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final String price;

  ItemDelivery({Key key, this.img, this.title, this.subtitle, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        img,
        alignment: Alignment.center,
      ),
      title: Text(title, style: TextUI.secondarybodyText1),
      subtitle: Text(
        subtitle,
        style: TextUI.secondarySubtitle2,
      ),
      hoverColor: ColorUI.primaryColor,
      trailing: Text(price, style: TextUI.dangerbodyText1),
      onTap: () {},
    );
  }
}
