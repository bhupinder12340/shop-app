// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/orders.dart' show Orders;
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
          itemCount: ordersData.orders.length,
          itemBuilder: (ctx, i) => OrderItem(ordersData.orders[i])),
    );
  }
}
