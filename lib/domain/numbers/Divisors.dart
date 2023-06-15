
class Divisors {

  //del numero 1 al base
  List<int> getDivisors(int base) {
    if(base <= 1 ) {
      return [base];
    }
    List<int> result = [1];
    int currentBase = 2;
    while (currentBase < base){
      if(base%currentBase == 0){
        result.add(currentBase);
      }
      currentBase ++;
    }
    result.add(base);
    return result;
  }

  int vowelCounter(String base) {
    List<String> vowels = ["a", "e", "i", "o", "u"];
    return base.codeUnits.fold(0, (previousValue, element) {
      if(!vowels.contains(String.fromCharCode(element))){
        print("NO = ${String.fromCharCode(element)}");
        return previousValue;
      } else {
        print("SI = ${String.fromCharCode(element)}");
        return previousValue+1;
      }
    } );
  }

  String printBuzzLightyear(int base) {
    if(base < 0 ) {
      return "";
    }
    StringBuffer buffer = StringBuffer("");
    for (int currentBase = 1; currentBase <= base; currentBase++) {
      if(currentBase%3 == 0 && currentBase%5 == 0){
        buffer.write("BuzzLightyear\n");
        continue;
      }
      if(currentBase%5 == 0){
        buffer.write("Lightyear\n");
        continue;
      }
      if(currentBase%3 == 0){
        buffer.write("buzz\n");
        continue;
      }
      buffer.write("$currentBase\n");
    }
    return buffer.toString();
  }

}