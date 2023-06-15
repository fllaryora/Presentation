import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/Divisors.dart';



void main() {
  var divisors = Divisors();
  setUp(() {

  });

  group('Exercice 18', ()
  {
    test('should get divisors', () {
      print( divisors.getDivisors(15));
      var result = divisors.getDivisors(5);
      var expected = [1,5];
      expect( listEquals(result, expected), true, reason: "los objetos son diferentes");
    });

  });


}