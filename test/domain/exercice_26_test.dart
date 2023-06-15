import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/fibonacci.dart';



void main() {
  var fiboClass = Fibonacci();

  setUp(() {

  });

  group('Exercice 26', ()
  {
    test('should get divisors', () {

      var result = fiboClass.getFibonacci(10);
      result.forEach((key, value) {
        if("serie" == key) {
          value.forEach((element) {
            print("${element}");
          });
        }
        if("result" == key)  {
          value.forEach((element) {
            print("${element}");
          });
        }
      });
      expect( listEquals(result["serie"], [0,1,1,2,3,5,8,13,21,34,55]), true, reason: "los objetos son diferentes");
      expect( listEquals(result["result"], [55]), true, reason: "los objetos son diferentes");
    });

  });


}