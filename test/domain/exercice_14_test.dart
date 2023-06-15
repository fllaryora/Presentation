import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';

void main() {
  var palindrome = Palindrome();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 14', () {

      expect(palindrome.concatMagic("victor",2) , "victorvictor" , reason: "los objetos son diferentes");

    });
  });



  }