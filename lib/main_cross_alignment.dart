import 'package:flutter/material.dart';

class MainCrossAlignment extends StatelessWidget {
  const MainCrossAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        _mainAxisPage('MainAxisAlignment.center', MainAxisAlignment.center),
        _mainAxisPage(
          'MainAxisAlignment.spaceAround',
          MainAxisAlignment.spaceAround,
        ),
        _mainAxisPage(
          'MainAxisAlignment.spaceBetween',
          MainAxisAlignment.spaceBetween,
        ),
        _mainAxisPage(
          'MainAxisAlignment.spaceEvenly',
          MainAxisAlignment.spaceEvenly,
        ),
        _mainAxisPage('MainAxisAlignment.start', MainAxisAlignment.start),
        _mainAxisPage('MainAxisAlignment.end', MainAxisAlignment.end),
        _crossAxisPage('CrossAxisAlignment.start', CrossAxisAlignment.start),
        _crossAxisPage('CrossAxisAlignment.center', CrossAxisAlignment.center),
      ],
    );
  }

  Widget _mainAxisPage(String title, MainAxisAlignment alignment) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  _box(Colors.red),
                  _box(Colors.yellow),
                  _box(Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crossAxisPage(String title, CrossAxisAlignment alignment) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  _box(Colors.red),
                  _box(Colors.yellow),
                  _box(Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _box(Color color) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.all(5),
      color: color,
    );
  }
}
