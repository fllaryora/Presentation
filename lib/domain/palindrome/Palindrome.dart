/*
extension on String {
  /// To iterate a [String]: `"Hello".iterable()`
  Iterable<String> iterable() sync* {
    for (var i = 0; i < length; i++) {
      yield this[i];
    }}

  /// To iterate a reversed [String]: `"reversed".reversed()`
  Iterable<String> reversed() sync* {
    for (var i = length-1; i >= 0; i--) {
      yield this[i];
    }}
}*/

class Palindrome {

 bool isPalindrome(String base) {
   int reversedIndex = base.length - 1;
   int index = 0;
   while ( index < base.length) {
      if(base[index] != base[reversedIndex]) {
        print("indices ${index} y ${reversedIndex}");
        print("${base[index]} != ${base[reversedIndex]}");
        return false;
      }
      reversedIndex--; index++;
   }
   return true;
 }


 String concatMagic(String base, int times) {
   StringBuffer buffer = StringBuffer("");
   for(int iter = 0 ; iter < times; iter++){
     buffer.write(base);
   }
   return buffer.toString();
 }
}