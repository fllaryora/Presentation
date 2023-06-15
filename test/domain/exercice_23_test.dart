import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/palindrome/ToAppercase.dart';

void main() {
  var palindrome = ToAppercase();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 23', () {

      expect(palindrome.toUppercaseAll("hola soy victor") , "Hola Soy Victor" , reason: "los objetos son diferentes");

    });
  });



  }