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
    test('Exercice 7', () {
      expect(percentage.getOddnumberBetween(1, 100) , 50 , reason: "los objetos son diferentes");

    });
  });
  }