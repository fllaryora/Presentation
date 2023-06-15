class EvenOdd {

  Map<String , List<int>> classifyListNumbers(List<int> base) {
    Map<String, List<int>> result = {};
    if(base.isEmpty){
      return result;
    }
    result ["even"] = base.where((element) => element%2==0).toList();
    result ["odd"] = base.where((element) => element%2!=0).toList();
    return result;
  }
}