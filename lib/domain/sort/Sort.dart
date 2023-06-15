class MyArray{

  List<int> filter (List<int> bigList, List<int> which){
    return bigList.where((element) =>
        which.contains(element)
    ).toList();
  }

  List<List<int>> divide(List<int> list, int i) {
    if(list.isEmpty){
      return [];
    }
    if(i < 1){
      return [];
    }
    List<List<int>>  result = <List<int>>[];
    for(int indexStart = 0; indexStart < list.length; ) {
      if(indexStart+i >=  list.length){
        result.add(list.sublist(indexStart ));
      } else {
        result.add(list.sublist(indexStart, indexStart+i ));
      }
      indexStart+=i;
    }
    print(result);
    return result;
  }

  String getMostUsedChar(String base) {
    if(base.isEmpty) {
      return "";
    }
    List<int> codes = base.codeUnits;
    Map<int, int> repetitionMap = <int, int>{};
    codes.forEach((int unicode) {
        int lastValue = repetitionMap[unicode]??0;
        repetitionMap[unicode] = lastValue + 1;
    });
    print("$repetitionMap");
    int mostCharRepeated = repetitionMap.keys.first;
    int maxRate = repetitionMap[repetitionMap.keys.first]!;
    repetitionMap.forEach((currentUnicode, currentRate) {
      print("${String.fromCharCode(mostCharRepeated)}  <= ${String.fromCharCode(currentUnicode)}");
      print("$maxRate  <= $currentRate");
      if(currentRate > maxRate) {
        print("applyed");
        mostCharRepeated = currentUnicode;
        maxRate = currentRate;
      }
    });
    return String.fromCharCode(mostCharRepeated);
  }


}