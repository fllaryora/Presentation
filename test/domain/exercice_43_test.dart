import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/Random.dart';


void main() {

  setUp(() {

  });

  group('Get the average number of a list of numbers', ()
  {

    test('Exercice 43', () {
      List<int> numbers= [1,2,3]; // the average is 3
      int averageExpected = 2;
      int sum = numbers.fold(0, (previousValue, element) => previousValue+ element);
      print(sum);
      int resultAverage = numbers.fold(0, (previousValue, element) => previousValue+ element) ~/ numbers.length;
      print(resultAverage);
      expect( resultAverage ,averageExpected , reason: "los objetos son diferentes");
      
    });
  });

}