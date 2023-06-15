import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/multiplication/MultiplicationRow.dart';
import 'package:presentation/domain/multiplication/MultiplicationTable.dart';

void main() {
  var mTable = MultiplicationTable();
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

  group('Scenario class multiplication table', ()
  {
    test('Ejercicio 1', () {
      List<MultiplicationRow> result = mTable.multiplicationTable(5);
      result.forEach((element) {
        print("${element.firstOperand} X ${element.secondOperand} = ${element.result}");
      });
      expect(result == expected , false , reason: "los objetos son diferentes");
      expect(listEquals(result, expected) , true ,reason: "Las clases son diferentes");
    });

  });
  }