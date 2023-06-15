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
    test('Ejercicio 4', () {

      expect(reverse.getReversed("123456") , "654321" , reason: "los objetos son diferentes");
      expect(reverse.getReversed("ana") , "ana" , reason: "los objetos son diferentes");

    });


  });

  }