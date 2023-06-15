import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/Student.dart';
import 'package:presentation/domain/StudentClassificator.dart';



void main() {
  var seeker = StudentClassificator();
  List<Student> movies = [
    Student("Victor", 10),
    Student("Juan", 5),
    Student("Pepe", 4),
    Student("Maria", 8),
    Student("Marta", 3),
  ];
  List<Student> seenMovies = [
    Student("Victor", 10),
    Student("Juan", 5),
    Student("Maria", 8),
  ];
  List<Student> notSeenMovies = [
    Student("Pepe", 4),
    Student("Marta", 3),
  ];
  setUp(() {

  });

  group('Exercice 45', ()
  {
    test('Classify students', () {

      var result = seeker.getClassification(movies, 5);
      result.forEach((key, value) {
        if("approved" == key) {
          value.forEach((element) {
            print("you have seen: ${element.name} by ${element.calification}");
          });
        } else {
          value.forEach((element) {
            print("Maybe you are losing: ${element.name} by ${element.calification}");
          });
        }
      });
      expect( listEquals(result["approved"], seenMovies), true, reason: "los objetos son diferentes");
      expect( listEquals(result["failed"], notSeenMovies), true, reason: "los objetos son diferentes");
    });

  });


}