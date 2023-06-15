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

      expect(palindrome.isASecuence([1,2,3,4,5],5) , true , reason: "los objetos son diferentes");
      expect(palindrome.isASecuence([1,2,3,5],5) , false , reason: "Falta el numero 4");
    });
  });



  }