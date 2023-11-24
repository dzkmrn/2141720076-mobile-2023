import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Deklarasi key dengan benar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({Key? key})
      : super(key: key); // Deklarasi key dengan benar

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Menggunakan Scaffold agar ada konten yang ditampilkan
        appBar: AppBar(
          title: const Text('Stream Dzaka'),
        ),
        body: Container(
            decoration: BoxDecoration(
          color: bgColor,
        )));
  }

  // langkah 9
  // void changeColor() async {
  //   await for (var eventColor in colorStream.getColors()) {
  //     setState(() {
  //       bgColor = eventColor;
  //     });
  //   }
  // }

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }
}
