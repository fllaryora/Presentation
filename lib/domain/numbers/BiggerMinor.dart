class BiggerMinor {
  Map<String, int> classifyNumbers(int base, int compare) {
    Map<String, int> result = {};
    if(base > compare) {
      result ["bigger"] = base;
      result ["minor"] = compare;
    } else {
      result ["bigger"] = compare;
      result ["minor"] = base;
    }
      return result;
  }

  Map<String, int> classifyListNumbers(List<int> base) {
    Map<String, int> result = {};
    if(base.isEmpty){
      return result;
    }
    var minor = base.first;
    var bigger = base.first;
    base.forEach((final int element) {
      if(element > bigger ) {
        bigger =  element;
      }
      if(element < minor) {
        minor = element;
      }
    });
    result ["bigger"] = bigger;
    result ["minor"] = minor;
    return result;
  }
}