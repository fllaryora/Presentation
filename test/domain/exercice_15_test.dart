
import 'package:flutter_test/flutter_test.dart';

import 'package:presentation/domain/sort/Sort.dart';

void main() {
  var myArray = MyArray();
  setUp(() {

  });

  group('Divide Arrays', ()
  {

    test('Exercice 15', () {
      String result = myArray.getMostUsedChar("victorroblesweb.es");
      expect( result , "e" , reason: "los objetos son diferentes");
    });
  });


}