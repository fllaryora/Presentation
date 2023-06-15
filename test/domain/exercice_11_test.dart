
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/match/MatchAmounts.dart';

void main() {
  var matchAmounts = MatchAmounts();
  var messageError = "No puedes leer el texto y la busqueda";
  var censoredTag = "[-CENSURADO-]";
  var expected = "[-CENSURADO-] [-CENSURADO-]";
  setUp(() {

  });

  group('Scenario class multiplication table', ()
  {

    test('Exercice 11', () {

      expect(matchAmounts.getCensoredString("", "", messageError,censoredTag) , messageError , reason: "los objetos son diferentes");
      expect(matchAmounts.getCensoredString("fsdfsdfsd", "", messageError,censoredTag) , messageError , reason: "los objetos son diferentes");
      expect(matchAmounts.getCensoredString("", "dfdsfdsfsd", messageError,censoredTag) , messageError , reason: "los objetos son diferentes");
      expect(matchAmounts.getCensoredString("", "dfdsfdsfsd", messageError,censoredTag) , messageError , reason: "los objetos son diferentes");
      expect(matchAmounts.getCensoredString("hola hola", "hola", messageError,censoredTag) ,  expected, reason: "los objetos son diferentes");
    });
  });
  }