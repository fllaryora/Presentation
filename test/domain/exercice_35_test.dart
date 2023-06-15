import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/numbers/Calculator.dart';



void main() {


  setUp(() {

  });

  group('Exercice 35', ()
  {
    test('should get divisors', () {

      var array =[100,200,300,700] ;
      var result =[array.first, array.last] ;
      expect( listEquals(result, [100,700]),true, reason: "los objetos son diferentes");


    });

  });


}