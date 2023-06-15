class Fibonacci {

  Map<String, List<int>> getFibonacci(int base) {
    Map<String, List<int>> result = {};
    int currentBase = 0;
    List<int> fiboList = [0];
    if(base <= 0) {
      return result;
    }
    var lastCurrentBase = 0;
    currentBase = 1;
    for(int index = 0; index < (base); index++){
      fiboList.add(currentBase);
      var isNext = (index+1) < (base);
      if(isNext) {
        var newBase = lastCurrentBase + currentBase;
        lastCurrentBase = currentBase;
        currentBase = newBase;
      }
    }
    return {"serie": fiboList, "result":[currentBase] };
  }
}