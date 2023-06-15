import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/reverse/Reverse.dart';
import 'package:presentation/domain/sort/Substrings.dart';

void main() {
  var asteriskSquare = Substrings();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {

    test('Exercice 46', () {
      var expected = ["h","o","l", "a", "ho", "ol", "la", "hol", "ola", "hola"];
      print(expected);
      var result = asteriskSquare.getSubStringsFrom("hola");
      print(result);
      expect(listEquals(result , expected), true , reason: "los objetos son diferentes");
    });
  });

}