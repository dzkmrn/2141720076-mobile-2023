import 'package:flutter/material.dart';
import 'package:shop_app/models/Item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  static const routeName = '/item';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.name!),
      ),
      body: Center(
        child: Text(args.price!.toString()),
      ),
    );
  }
}
