import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/domain/forloop/Secuence.dart';

import 'package:presentation/domain/palindrome/Palindrome.dart';
import 'package:presentation/domain/palindrome/ToAppercase.dart';

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
void main() {

  setUp(() {

  });

  group('validate email', ()
  {
    test('Exercice 39', () {
      var emailValid = "name.surname@domain.com.uk";
      expect(emailValid.isValidEmail(), true , reason: "los objetos son diferentes");

    });
  });



  }