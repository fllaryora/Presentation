import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/BiggerMinor.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/EvenOdd.dart';
import 'package:presentation/domain/sort/Anagram.dart';


void main() {
  var biggerMinor = EvenOdd();

  setUp(() {

  });

  group('Exercice 51', ()
  {
    test('divide by evens and odds', () {

      Map<String , List<int>> result = biggerMinor.classifyListNumbers([1,2,3,4]);
      expect( listEquals(result["even"], [2,4]), true, reason: "los objetos son diferentes");
      expect( listEquals(result["odd"], [1,3]), true, reason: "los objetos son diferentes");

    });

  });


}