import 'package:counter_bloc_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('counter state is shared across both screens', (tester) async {
    await tester.pumpWidget(const CounterBlocApp());

    expect(find.text('First Screen'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.text('Second Screen'));
    await tester.pumpAndSettle();

    expect(find.text('Same Counter'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    expect(find.text('First Screen'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
  });
}
