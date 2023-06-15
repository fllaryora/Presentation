import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/factoreal.dart';
import 'package:presentation/domain/numbers/fibonacci.dart';
import 'package:presentation/domain/reverse/Reverse.dart';



void main() {
  var reverse = Reverse();

  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 29', () {
      expect(reverse.isCapinua(2002) , true , reason: "los objetos son diferentes");
      expect(reverse.isCapinua(2014) , false , reason: "los objetos son diferentes");
    });

  });

}