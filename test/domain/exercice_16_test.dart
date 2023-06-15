import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/forloop/ForLoop.dart';


void main() {
  var myArray = ForLoop();
  setUp(() {

  });

  group('Scenario get vowels', ()
  {
    test('Excercice 16', () {
      var result = myArray.vowelCounter("victorroblesweb.es");
      var expected = 6;
      expect( result, expected, reason: "los objetos son diferentes");
    });


  });


}