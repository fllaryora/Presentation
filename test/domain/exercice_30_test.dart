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


  group('Scenario class multiplication table', ()
  {
    test('Exercice 30', () {
      expect(listEquals([1,2,1,1,1,3,4].toSet().toList(), [1,2,3,4]),true , reason: "los objetos son diferentes");

    });

  });

}