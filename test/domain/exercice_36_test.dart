import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/forloop/ForLoop.dart';


void main() {
  var myArray = ForLoop();
  setUp(() {

  });

  group('Scenario get vowels', ()
  {
    test('Excercice 16', () {
      var result = myArray.vowelconsonantCounter("victorroblesweb.es");
      var vowelsExpected = 6;
      var consonantExpected = 11;
      expect( result["vowels"], vowelsExpected, reason: "los objetos son diferentes");
      expect( result["consonants"], consonantExpected, reason: "los objetos son diferentes");
    });


  });


}