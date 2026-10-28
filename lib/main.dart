import 'package:flutter/material.dart';

import 'main_cross_alignment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task5-BALILA-ON',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Task5-BALILA-ON'),
          centerTitle: true,
        ),
        body: const MainCrossAlignment(),
      ),
    );
  }
}

