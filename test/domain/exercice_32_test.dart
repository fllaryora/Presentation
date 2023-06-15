import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/factoreal.dart';
import 'package:presentation/domain/numbers/fibonacci.dart';
import 'package:presentation/domain/reverse/Reverse.dart';
import 'package:presentation/domain/sort/Angle.dart';



void main() {
  var from = [5,6,7];
  var expected = [25,36,49];

  group('Retornar la misma lista elevada al cuadrado', ()
  {
    test('Exercice 32', () {
      var result = from.map((e) => e*e).toList();
      expect(listEquals(result,expected),true , reason: "los objetos son diferentes");

    });

  });

}