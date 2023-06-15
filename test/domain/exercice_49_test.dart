
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/sort/JustOneApperar.dart';


void main() {
  var myArray = JustOneAppear();
  setUp(() {

  });

  group('Dado un objeto saber si la propiedad existe o no existe', ()
  {

    test('Exercice 49', () {
      Map<String, String> result = {"nombre": "pepe"};
      expect( result.containsKey("nombre") , true , reason: "los objetos son diferentes");

    });
  });


}