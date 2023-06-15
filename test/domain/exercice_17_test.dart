import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/forloop/ForLoop.dart';


void main() {
  var myArray = ForLoop();
  setUp(() {

  });

  group('Exercice 17', ()
  {
    test('should get printBuzzLightyear', () {
      print( myArray.printBuzzLightyear(15));
      var result = myArray.printBuzzLightyear(5);
      var expected = "1\n2\nbuzz\n4\nLightyear\n";
      expect( result, expected, reason: "los objetos son diferentes");
    });

  });


}