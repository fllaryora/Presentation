import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/forloop/ForLoop.dart';


void main() {
  var myArray = ForLoop();
  var expected = "- nº20\n- nº12\n- nº4\n";
  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Exercice 12', () {
      var result = myArray.getSpecialList(20);
      expect( result, expected, reason: "los objetos son diferentes");
    });

  });


}