
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/match/MatchAmounts.dart';

void main() {
  var matchAmounts = MatchAmounts();
  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {
    test('Ejercicio 3', () {

      expect(matchAmounts.getMatchAmounts("Hola soy una frase", "palabra") , 0 , reason: "los objetos son diferentes");
      expect(matchAmounts.getMatchAmounts("tengo la palabra y soy una frase, PALABRA", "palabra") , 2 , reason: "los objetos son diferentes");
    });
  });
  }