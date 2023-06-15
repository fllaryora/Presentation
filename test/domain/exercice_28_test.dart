import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/factoreal.dart';
import 'package:presentation/domain/numbers/fibonacci.dart';



void main() {
  var fiboClass = Factoreal();

  setUp(() {

  });

  group('Exercice 28', ()
  {
    test('should get divisors', () {

      var result = fiboClass.getFactoreal(3);
      var expected = 6;
      expect(result,expected, reason: "los objetos son diferentes");
    });

  });


}