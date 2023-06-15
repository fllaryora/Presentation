import 'package:presentation/domain/sort/Anagram.dart';

class JustOneAppear{
  Map<String, List<String>> getFirstAndJustOneAppear(String base) {
    Map<String, List<String>> result = {};
    if(base.isNotEmpty) {
      result["first"] = [base.substring(0,1)];
      Map<int, int> repetitionMap = Anagram().getRepetitionMap(base);
      repetitionMap.removeWhere((key, value) => value != 1);
      List<String> listJustOneAppear = repetitionMap.keys
          .map((e) => String.fromCharCode(e)).toList();
      result["listJustOneAppear"] = listJustOneAppear;
    }
    return result;
  }

}
