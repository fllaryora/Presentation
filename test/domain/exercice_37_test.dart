
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/sort/MostRepeated.dart';

import 'package:presentation/domain/sort/Sort.dart';

void main() {
  var intRepeated = MostRepeated<int>();
  var stringRepeated = MostRepeated<String>();
  setUp(() {

  });

  group('Divide Arrays', ()
  {

    test('Exercice 37', () {
      int? result = intRepeated.getMostRepeated([1,2,3,4,1]);
      expect( result , 1 , reason: "los objetos son diferentes");
      String? result2 = stringRepeated.getMostRepeated(["victor","robles", "victor"]);
      expect( result2 , "victor" , reason: "los objetos son diferentes");
    });
  });


}