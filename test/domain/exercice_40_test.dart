import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/BiggerMinor.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/sort/Anagram.dart';


void main() {
  var biggerMinor = BiggerMinor();

  setUp(() {

  });

  group('Exercice 40', ()
  {
    test('should get divisors', () {

      var result = biggerMinor.classifyListNumbers([1,2,3,4,5]);

      result.forEach((key, value) {
        if("bigger" == key) {
          print("the bigger one is: ${value}");
        } else {
          print("the minor number is: ${value}");
        }
      });
      expect( result["bigger"], 5, reason: "los objetos son diferentes");
      expect( result["minor"], 1, reason: "los objetos son diferentes");

    });

  });


}