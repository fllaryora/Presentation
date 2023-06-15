import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/NumbrerLoopCounter.dart';


void main() {

  setUp(() {

  });

  group('Numero random entre 2 numeros', ()
  {

    test('Exercice 50', () {
      int result = NumbrerLoopCounter().getLoopAmount(28861);
      print(result);
      expect(result  ,5 , reason: "los objetos son diferentes");
    });
  });

}