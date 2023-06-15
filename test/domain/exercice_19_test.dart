import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/movie/MovieRow.dart';
import 'package:presentation/domain/movie/MovieSeeker.dart';
import 'package:presentation/domain/numbers/Divisors.dart';



void main() {
  var seeker = MovieSeeker();
  List<MovieRow> movies = [];
  List<MovieRow> seenMovies = [];
  List<MovieRow> notSeenMovies = [];
  setUp(() {
    movies.add(MovieRow("El señor de los anillos", "Peter Jackson", true));
    movies.add(MovieRow("La liga de la justicia", "Zack Synder", false));
    seenMovies.add(MovieRow("El señor de los anillos", "Peter Jackson", true));
    notSeenMovies.add(MovieRow("La liga de la justicia", "Zack Synder", false));
  });

  group('Exercice 19', ()
  {
    test('should get divisors', () {

      var result = seeker.classifyMoviesBySeen(movies);
      result.forEach((key, value) {
        if("seen" == key) {
          value.forEach((element) {
            print("you have seen: ${element.title} by ${element.director}");
          });
        } else {
          value.forEach((element) {
            print("Maybe you are losing: ${element.title} by ${element.director}");
          });
        }
      });
      expect( listEquals(result["seen"], seenMovies), true, reason: "los objetos son diferentes");
      expect( listEquals(result["not-seen"], notSeenMovies), true, reason: "los objetos son diferentes");
    });

  });


}