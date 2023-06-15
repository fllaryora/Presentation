
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/sort/JustOneApperar.dart';


void main() {
  var myArray = JustOneAppear();
  setUp(() {

  });

  group('Divide Arrays', ()
  {

    test('Exercice 48', () {
      Map<String, List<String>> result = myArray.getFirstAndJustOneAppear("HOY");
      String firstLetterResult = result["first"]!.first;
      expect( firstLetterResult , "H" , reason: "los objetos son diferentes");
      List<String> listJustOneAppear = result["listJustOneAppear"]!;
      expect( listEquals(listJustOneAppear, ["H", "O", "Y"]), true, reason: "los objetos son diferentes");
    });
  });


}