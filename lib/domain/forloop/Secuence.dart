
class Secuence {

  //del numero base al 1 al max de 1 en 1
  bool isASecuence(List<int> base, int max) {
    if(base.isEmpty){
      return false;
    }
    if(base.first != 1) {
      return false;
    }
    int currentElement = 1;

    return base.fold(true, (previousValue, element) {
      bool currentCondition = element == currentElement;
      currentElement++;
      return previousValue && currentCondition;
    } );
  }

  List<int> getSquareSequence(int max) {
    if(max <= 0){
      return [];
    }
    List<int> result = [];
    for(int index = 1; index <= max; index++){
      result.add(index *index);
    }
    return result;
  }
}