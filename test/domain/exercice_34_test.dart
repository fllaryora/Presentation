import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/Calculator.dart';



void main() {
  var cacl = Calculator();

  setUp(() {

  });

  group('Exercice 34', ()
  {
    test('should get divisors', () {

      var result = cacl.calculate(5,5);
      expect( result["sum"], 10, reason: "los objetos son diferentes");
      expect( result["minus"], 0, reason: "los objetos son diferentes");
      expect( result["times"], 25, reason: "los objetos son diferentes");
      expect( result["divide"], 1, reason: "los objetos son diferentes");
    });

  });


}