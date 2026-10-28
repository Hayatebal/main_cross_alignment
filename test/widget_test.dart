import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:main_cross_alignment/main.dart';

void main() {
  testWidgets('shows the main and cross axis alignment examples', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Task5-BALILA-ON'), findsOneWidget);
    expect(find.text('MainAxisAlignment.center'), findsOneWidget);

    for (var page = 0; page < 6; page++) {
      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();
    }

    expect(find.text('CrossAxisAlignment.start'), findsOneWidget);
  });
}
