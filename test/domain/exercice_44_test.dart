import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/Random.dart';


void main() {

  setUp(() {

  });

  group('Get the average number of a list of numbers', ()
  {

    test('Exercice 44', () {
      List<String> numbers = ["hola", "san francisco", "ciudad real", "victor"];
      List<String> expected = ["san francisco", "ciudad real"];
      List<String> result = numbers.where((element) {
        return element.split(" ").length > 1;
      }).toList();

      expect( listEquals(expected,result) , true , reason: "los objetos son diferentes");

    });
  });

}