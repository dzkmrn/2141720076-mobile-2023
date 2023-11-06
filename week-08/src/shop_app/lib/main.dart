import 'package:flutter/material.dart';
import 'package:shop_app/models/Item.dart';
import 'package:shop_app/pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
