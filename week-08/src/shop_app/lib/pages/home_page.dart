import 'package:flutter/material.dart';
import 'package:shop_app/models/Item.dart';
import 'package:shop_app/pages/item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> Items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];

  final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Shopping List'),
          ),
          body: Container(
            margin: const EdgeInsets.all(8),
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: Items.length,
              itemBuilder: (context, index) {
                final item = Items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name!,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Rp ${item.price}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            style: const ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.green)),
                            onPressed: () {},
                            child: const Text('Add to cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
