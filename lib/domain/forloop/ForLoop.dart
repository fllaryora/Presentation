
class ForLoop {

  //del numero base al 0 de 8 en 8
  String getSpecialList(int base) {
    if(base < 0 ) {
      return "";
    }
    StringBuffer buffer = StringBuffer("");
    int currentBase = base;
    while (currentBase >= 0){
      buffer.write("- nº$currentBase\n");
      currentBase -= 8;
    }
    return buffer.toString();
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

  Map<String, int> vowelconsonantCounter(String base) {
    String vowels = "aeiou";
    vowels += vowels.toUpperCase();
    String consonants = "qwrtypsdfghjklñzxcvbnm";
    consonants += consonants.toUpperCase();
    int consonantCounter = 0;
    int vowelCounter = 0;
    List<int> units = base.codeUnits;
    List<int> vowelUnits = vowels.codeUnits;
    List<int> consonantUnits = consonants.codeUnits;
    for(int index = 0; index < units.length; index++) {
      int currentChar = units[index];
      if(vowelUnits.contains(currentChar)){
        vowelCounter++;
      }
      if(consonantUnits.contains(currentChar)){
        consonantCounter++;
      } else {
        print("It is a not letter");
      }
    }
    return {"vowels": vowelCounter, "consonants": consonantCounter};
  }
}