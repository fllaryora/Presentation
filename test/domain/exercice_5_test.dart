import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/percentage/Percentage.dart';
import 'package:presentation/domain/reverse/Reverse.dart';

void main() {
  var percentage = Percentage();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Ejercicio 5', () {
      expect(percentage.getNumberOfPercentageOfTotal(20.0, 100.0) , 20.0 , reason: "los objetos son diferentes");
      expect(percentage.getNumberOfPercentageOfTotal(43.0, 897.0) , 385.71 , reason: "los objetos son diferentes");
    });
  });
  }