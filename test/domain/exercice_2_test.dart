import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';

void main() {
  var palindrome = Palindrome();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Ejercicio 2', () {

      expect(palindrome.isPalindrome("dfsdfdsgdsgsdgsdg") , false , reason: "los objetos son diferentes");
      expect(palindrome.isPalindrome("ana") , true , reason: "los objetos son diferentes");
      expect(palindrome.isPalindrome("bob") , true , reason: "los objetos son diferentes");
      expect(palindrome.isPalindrome("otto") , true , reason: "los objetos son diferentes");
      expect(palindrome.isPalindrome("allivessevilla") , true , reason: "los objetos son diferentes");
    });

  });

  }