import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Dzaka Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(
                context); // Panggil _showColorDialog saat tombol ditekan
          },
        ),
      ),
    );
  }

  Future<void> _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Purple'),
              onPressed: () {
                setState(() {
                  color = Colors.purple.shade700;
                });
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Grey'),
              onPressed: () {
                setState(() {
                  color = Colors.grey.shade700;
                });
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Black'),
              onPressed: () {
                setState(() {
                  color = Colors.black;
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
