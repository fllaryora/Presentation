import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/sort/Anagram.dart';


void main() {
  var anagram = Anagram();

  setUp(() {

  });

  group('Exercice 20', ()
  {
    test('should get divisors', () {

      var result = anagram.isAnagram("Riesgo", "Sergio");
      var result2 = anagram.isAnagram("Victor", "Robles");
      expect( result, true, reason: "los objetos son diferentes");
      expect( result2, false, reason: "los objetos son diferentes");
    });

  });


}