import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/Random.dart';


void main() {

  setUp(() {

  });

  group('Numero random entre 2 numeros', ()
  {

    test('Exercice 42', () {
      var result = RandomNumber().getMyRandom(1, 100);
      print(result);
      expect(result >=1 ,true , reason: "los objetos son diferentes");
      expect(result <=100 ,true , reason: "los objetos son diferentes");
    });
  });

}