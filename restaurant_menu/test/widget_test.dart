import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:restaurant_menu/main.dart';

void main() {
  testWidgets('displays the restaurant menu', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Card), findsNWidgets(3));
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Chicken Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
  });
}
