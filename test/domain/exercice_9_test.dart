import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/sort/Sort.dart';

void main() {
  var myArray = MyArray();
  var list = [4,5,6,7];
  var filterBy = [7,8,9,5,7];
  var expected = [5,7];
  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 9', () {
      var result = myArray.filter(list, filterBy);
      expect( listEquals(result, expected) , true , reason: "los objetos son diferentes");
    });


  });

}