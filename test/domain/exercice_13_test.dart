import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/sort/Sort.dart';

void main() {
  var myArray = MyArray();
  setUp(() {

  });

  group('Divide Arrays', ()
  {

    test('Exercice 13', () {

      List<List<int>> result = myArray.divide([7,8,9,10], 2);
      List<List<int>> expected = [[7,8],[9,10]];
      for(var i =0; i < expected.length; i++) {
        expect( listEquals(result[i], expected[i]) , true , reason: "los objetos son diferentes");
      }
      List<List<int>> resultTwo = myArray.divide([7,8,9,10,5], 2);
      List<List<int>> expectedTwo = [[7,8],[9,10],[5]];
      for(var i =0; i < expected.length; i++) {
        expect( listEquals(resultTwo[i], expectedTwo[i]) , true , reason: "los objetos son diferentes");
      }
    });
  });
}