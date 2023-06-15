// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/multiplication/MultiplicationRow.dart';
import 'package:presentation/domain/multiplication/MultiplicationTable.dart';

import 'package:presentation/main.dart';
import 'package:presentation/ui/multiplication/data/multiplication_list.dart';
import 'package:presentation/ui/multiplication/ui/widget/my_app.dart';

void main() {
  int base = 5;
  var mTable = MultiplicationTable();
  List<MultiplicationRow> result = mTable.multiplicationTable(base);
  List<ListItem> parameters = <ListItem>[];
  parameters.add(HeadingItem("Multiplication table of $base"));
  parameters.addAll(
      result.map((multiplicationRow) => MessageItem(
          "${multiplicationRow.firstOperand}",
          "${multiplicationRow.secondOperand}",
          "${multiplicationRow.result}"))
  );


  List<MultiplicationRow> expected = <MultiplicationRow>[];
  setUp(() {
    expected.add(MultiplicationRow(1, 5, 5));
    expected.add(MultiplicationRow(2, 5, 10));
    expected.add(MultiplicationRow(3, 5, 15));
    expected.add(MultiplicationRow(4, 5, 20));
    expected.add(MultiplicationRow(5, 5, 25));
    expected.add(MultiplicationRow(6, 5, 30));
    expected.add(MultiplicationRow(7, 5, 35));
    expected.add(MultiplicationRow(8, 5, 40));
    expected.add(MultiplicationRow(9, 5, 45));
    expected.add(MultiplicationRow(10, 5, 50));
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MultiplicationApp(key: Key("value"), items: parameters));

    expect(find.text('7 X 5 = 35'), findsOneWidget);

    // Verify that our counter starts at 0.
    expect(find.byKey(Key("1")), findsOneWidget);
    expect(find.byKey(Key("11")), findsNothing);

    // Finder works like appium iOS finder
    // If the element is not present in the screen
    // and you need to scroll to see them you find nothing!!
  });
}
