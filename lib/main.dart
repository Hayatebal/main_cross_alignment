import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BALILA-ON',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BALILA-ON'),
          centerTitle: true,
        ),
        body: PageView(
          children: [
            mainAxisPage(
              'MainAxisAlignment.center',
              MainAxisAlignment.center,
            ),
            mainAxisPage(
              'MainAxisAlignment.spaceAround',
              MainAxisAlignment.spaceAround,
            ),
            mainAxisPage(
              'MainAxisAlignment.spaceBetween',
              MainAxisAlignment.spaceBetween,
            ),
            mainAxisPage(
              'MainAxisAlignment.spaceEvenly',
              MainAxisAlignment.spaceEvenly,
            ),
            mainAxisPage(
              'MainAxisAlignment.start',
              MainAxisAlignment.start,
            ),
            mainAxisPage(
              'MainAxisAlignment.end',
              MainAxisAlignment.end,
            ),
            crossAxisPage(
              'CrossAxisAlignment.start',
              CrossAxisAlignment.start,
            ),
            crossAxisPage(
              'CrossAxisAlignment.center',
              CrossAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget mainAxisPage(
    String title,
    MainAxisAlignment alignment,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: alignment,
                children: [
                  box(Colors.red),
                  box(Colors.yellow),
                  box(Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget crossAxisPage(
    String title,
    CrossAxisAlignment alignment,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 220,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: alignment,
                children: [
                  box(Colors.red),
                  box(Colors.yellow),
                  box(Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget box(Color color) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.all(5),
      color: color,
    );
  }
}