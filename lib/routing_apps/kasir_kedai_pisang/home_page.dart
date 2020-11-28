import 'package:flutter/material.dart';
import 'cart.dart';

class HomePages extends StatelessWidget {
  final List<Cart> _listCart;
  HomePages(this._listCart);

  int get totalItem {
    return _listCart.fold(0, (sum, item) {
      return sum += item.qty;
    });
  }

  double get totalPrice {
    return _listCart.fold(0, (sum, item) {
      double total_harga = item.qty * item.harga;
      return sum += total_harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Total Order : ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  totalItem.toString() + " qty ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ), // <Widget> [] // Row
            Row(
              children: <Widget>[
                Text(
                  "Total Of Order Price : ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'IDR.' + totalPrice.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ) // <Widget> [] // Row
          ], // <Widget> []
        ), // Row
      ), // Padding
    ); // Card
  }
}
