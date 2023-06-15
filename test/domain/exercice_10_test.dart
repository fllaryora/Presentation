import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/reverse/Reverse.dart';

void main() {
  var palindrome = Reverse();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 10', () {
      var expected =  "[-]\n[-][-]\n[-][-][-]\n[-][-][-][-]\n";
      expect(palindrome.getStairs(4) , expected , reason: "los objetos son diferentes");
    });

  });




  }