import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart';

import '../widgets/app_drawer.dart';
import '../widgets/order_widget.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Orders _orders = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus pedidos'),
      ),
      body: ListView.builder(
        itemCount: _orders.itemsCount,
        itemBuilder: (ctx, i) => OrderWidget(_orders.items[i]),
      ),
      drawer: AppDrawer(),
    );
  }
}
