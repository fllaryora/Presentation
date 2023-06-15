import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/palindrome/ToAppercase.dart';

void main() {
  var palindrome = ToAppercase();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 25', () {
      var result = palindrome.toUppercaseOrToLowercaseByMost("JOAQuin");
      var expected = "JOAQUIN";
      expect(result , expected , reason: "los objetos son diferentes");
      var result2= palindrome.toUppercaseOrToLowercaseByMost("Victor");
      var expected2 = "victor";
      expect(result2 , expected2 , reason: "los objetos son diferentes");
    });
  });



  }