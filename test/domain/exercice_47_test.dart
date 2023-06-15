import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/UserHobby.dart';
import 'package:presentation/domain/HobbyCounter.dart';



void main() {
  var seeker = HobbyCounter();
  List<UserHobby> movies = [];
  Map<String, int> expected = {
    "informatica": 3 ,
    "cine":4,
    "futbol":2,
    "videojuegos":2,
    "tenis":1,
    "surf":2
  };
  setUp(() {
    movies.add(UserHobby("Victor", ["informatica","cine", "videojuegos"]));
    movies.add(UserHobby("Juan", ["cine", "futbol", "tenis"]));
    movies.add(UserHobby("Paco", ["informatica","cine", "surf"]));
    movies.add(UserHobby("Pepe", ["informatica","cine", "videojuegos", "futbol","surf"]));
  });

  group('Exercice 47', ()
  {
    test('should get divisors', () {

      var result = seeker.getHobbyCount(movies);
      expect( result["informatica"], expected["informatica"], reason: "los objetos son diferentes");
      expect( result["cine"], expected["cine"], reason: "los objetos son diferentes");
      expect( result["videojuegos"], expected["videojuegos"], reason: "los objetos son diferentes");
      expect( result["futbol"], expected["futbol"], reason: "los objetos son diferentes");
      expect( result["tenis"], expected["tenis"], reason: "los objetos son diferentes");
      expect( result["surf"], expected["surf"], reason: "los objetos son diferentes");
    });

  });


}