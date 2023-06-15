import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/days/CalculateDays.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/fibonacci.dart';



void main() {
  var calculateDays = CalculateDays();

  setUp(() {

  });

  group('Exercice 27', ()
  {
    test('should get divisors', () {
      var totalDays = 920;
      var result = calculateDays.getCalculatedDays(totalDays);
      print("$totalDays, is equals to ${result.years} years, ${result.months} months and ${result.days} days");
      expect( result.years, 2, reason: "los objetos son diferentes");
      expect( result.months, 6, reason: "los objetos son diferentes");
      expect( result.days, 10, reason: "los objetos son diferentes");
    });

  });


}