import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/reverse/Reverse.dart';

void main() {
  var asteriskSquare = Reverse();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {

    test('Exercice 41', () {
      var expected =  "   *   \n  ***  \n ***** \n*******\n";
      print(expected);
      var result = asteriskSquare.getTriangle(4);
      print(expected);
      expect(result , expected , reason: "los objetos son diferentes");
    });
  });

}