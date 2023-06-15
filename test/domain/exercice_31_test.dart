import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';
import 'package:presentation/domain/numbers/factoreal.dart';
import 'package:presentation/domain/numbers/fibonacci.dart';
import 'package:presentation/domain/reverse/Reverse.dart';
import 'package:presentation/domain/sort/Angle.dart';



void main() {

  var angle = AngleClassificator();
  var acute = angle.getClassificationByAngle(47);
  var right = angle.getClassificationByAngle(90);
  var obtuse = angle.getClassificationByAngle(145);
  var stright = angle.getClassificationByAngle(180);
  var reflect = angle.getClassificationByAngle(245);
  var full = angle.getClassificationByAngle(360);
  var acute2 = angle.getClassificationByAngle(360+47);
  var right2 = angle.getClassificationByAngle(360+90);
  var obtuse2 = angle.getClassificationByAngle(360+145);
  var stright2 = angle.getClassificationByAngle(360+180);
  var reflect2 = angle.getClassificationByAngle(360+245);
  var full2 = angle.getClassificationByAngle(360*2);
  group('Scenario class multiplication table', ()
  {
    test('Exercice 30', () {
      expect(acute, Angles.ACUTE , reason: "los objetos son diferentes");
      expect(acute2, Angles.ACUTE , reason: "los objetos son diferentes");
      expect(right, Angles.RIGHT , reason: "los objetos son diferentes");
      expect(right2, Angles.RIGHT , reason: "los objetos son diferentes");
      expect(obtuse, Angles.OBTUSE , reason: "los objetos son diferentes");
      expect(obtuse2, Angles.OBTUSE , reason: "los objetos son diferentes");
      expect(stright, Angles.STRAIGHT , reason: "los objetos son diferentes");
      expect(stright2, Angles.STRAIGHT , reason: "los objetos son diferentes");
      expect(reflect, Angles.REFLEX , reason: "los objetos son diferentes");
      expect(reflect2, Angles.REFLEX , reason: "los objetos son diferentes");
      expect(full, Angles.FULL , reason: "los objetos son diferentes");
      expect(full2, Angles.FULL , reason: "los objetos son diferentes");
    });

  });

}