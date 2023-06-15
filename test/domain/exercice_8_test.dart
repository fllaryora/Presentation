import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/reverse/Reverse.dart';

void main() {
  var reverse = Reverse();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 8', () {
      expect(reverse.getReversedInt(67) , 76 , reason: "los objetos son diferentes");

    });

  });

  }