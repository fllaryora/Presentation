import 'package:presentation/data/movie/MovieRow.dart';

class MovieSeeker {
  Map<String, List<MovieRow>> classifyMoviesBySeen(List<MovieRow> movies){
    Map<String,List<MovieRow>> result = <String,List<MovieRow>>{};
    result["seen"] = movies.where(
            (element) => element.isSeen).toList();
    result["not-seen"] = movies.where(
            (element) => !element.isSeen).toList();
    return result;
  }
}