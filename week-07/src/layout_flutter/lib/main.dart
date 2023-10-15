import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Text(
                  'Partheon',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Acropolis, Athena, Yunani',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        /* soal 3*/
        const Icon(
          Icons.star, // Gunakan ikon bintang
          color: Colors.red, // Set warna merah
        ),
        const Text(
          '41', // Teks "41"
          style: TextStyle(
            color: Colors.red, // Set warna merah
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Parthenon (Yunani Kuno: Παρθενών) adalah kuil Yunani '
        'yang dibangun untuk dewi Athena '
        'pelindung Athena pada abad ke-5 SM. '
        'Parthenon dianggap sebagai simbol Yunani Kuno '
        'dan demokrasi Athena, dan merupakan salah satu '
        'monumen budaya terbesar dunia '
        ' - Muhammad Dzaka (2141720076)',
        softWrap: true,
      ),
    );

    return MaterialApp(
        title: 'Flutter layout: Nama dan NIM',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Layout Dzaka xDD'),
            ),
            body: ListView(
              children: [
                Image.asset(
                  'image/partheon.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                titleSection,
                buttonSection,
                textSection
              ],
            )));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
