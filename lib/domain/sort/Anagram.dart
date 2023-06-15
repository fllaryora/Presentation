class Anagram{

  Map<int, int> getRepetitionMap(String base) {
    List<int> codesOfBase = base.codeUnits;
    Map<int, int> repetitionMap = <int, int>{};
    codesOfBase.forEach((int unicode) {
      int lastValue = repetitionMap[unicode]??0;
      repetitionMap[unicode] = lastValue + 1;
    });
    return repetitionMap;
  }

  bool isAnagram(String _base, String _compare) {
    String base = _base.toLowerCase();
    String compare = _compare.toLowerCase();
    if(base.isEmpty) {
      return compare.isEmpty;
    }
    if(compare.isEmpty) {
      return false;
    }
    if(base.length != compare.length) {
      return false;
    }

    Map<int, int> repetitionMapBase = getRepetitionMap(base);
    print("$repetitionMapBase");
    Map<int, int> repetitionMapCompare = getRepetitionMap(compare);
    print("$repetitionMapCompare");

    return repetitionMapBase.keys.fold(true, (previousValue, unicodeFromBase) {
      int repetitionFromBase = repetitionMapBase[unicodeFromBase]??0;
      int repetitionFromCompare = repetitionMapCompare[unicodeFromBase]??0;
      print("${String.fromCharCode(unicodeFromBase)}  ==> ${String.fromCharCode(repetitionFromBase)}");
      print("${String.fromCharCode(unicodeFromBase)}  ==> ${String.fromCharCode(repetitionFromCompare)}");
      return previousValue && (repetitionFromBase == repetitionFromCompare);
    }
    );
  }

  String getFirst(String base, int lenght) {
    return base.substring(0, lenght);
  }

}