import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/forloop/Secuence.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/palindrome/ToAppercase.dart';

void main() {
  var palindrome = Secuence();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 23', () {
      var result = palindrome.getSquareSequence(5);
      var expected = [1,4,9,16,25];
      expect(listEquals(result, expected), true , reason: "los objetos son diferentes");

    });
  });



  }