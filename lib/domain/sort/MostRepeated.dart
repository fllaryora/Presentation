class MostRepeated <ELEMENT>{

  ELEMENT? getMostRepeated (List<ELEMENT> base){
    Map<ELEMENT, int> repetitionMap = <ELEMENT, int>{};
    if(base.isEmpty) {
      return null;
    }
    base.forEach((ELEMENT item) {
      int lastValue = repetitionMap[item]??0;
      repetitionMap[item] = lastValue + 1;
    });
    //the repeatition map is done
    ELEMENT mostElementRepeated = repetitionMap.keys.first;
    int maxRate = repetitionMap[repetitionMap.keys.first]!;
    repetitionMap.forEach((ELEMENT currentElement, int currentRate) {
      print("${mostElementRepeated}  <= ${currentElement}");
      print("$maxRate  <= $currentRate");
      if(currentRate > maxRate) {
        print("applyed");
        mostElementRepeated = currentElement;
        maxRate = currentRate;
      }
    });
    return mostElementRepeated;
  }
}