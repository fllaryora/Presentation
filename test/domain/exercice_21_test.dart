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

  group('Exercice 21', ()
  {
    test('should get divisors', () {

      var result = anagram.getFirst("Cursos Desarrollo Web", 6);
      expect( result, "Cursos", reason: "los objetos son diferentes");
    });

  });


}