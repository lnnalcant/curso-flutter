import 'package:flutter/material.dart';

import './views/cart_screen.dart';
import './views/product_detail_screen.dart';
import './views/products_overview_screen.dart';
import './views/orders_screen.dart';

import 'package:provider/provider.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';

import './utils/appRoutes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        // home: ProductsOverviewScreen(),
        routes: {
          AppRoute.HOME: (ctx) => ProductsOverviewScreen(),
          AppRoute.PRODUCT_DETAIL: (ctx) => ProductDetailScreen(),
          AppRoute.CART: (ctx) => CartScreen(),
          AppRoute.ORDERS: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
