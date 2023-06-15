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

class Reverse {

  String getReversed(String base) {
    StringBuffer reversed = StringBuffer("");
    for (var i = base.length-1; i >= 0; i--) {
      reversed.write(base[i]);
    }
   return reversed.toString();
 }

 bool isPalindromeFn(String base) {
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

  String getAsteriskSquare(int width) {
    StringBuffer buffer = StringBuffer("");

    for (var index = 0; index < width; index++) {
      buffer.write("*");
    }
    buffer.write("\n");

    for (var index_w = 1; index_w < width-1; index_w++) {
      buffer.write("*");
      for (var index = 1; index < width-1; index++) {
        buffer.write(" ");
      }
      buffer.write("*");
      buffer.write("\n");
    }

    for (var index = 0; index < width; index++) {
      buffer.write("*");
    }
    buffer.write("\n");
    return buffer.toString();
  }

  int getReversedInt(int _base) {
    String base = _base.toString();
    StringBuffer reversed = StringBuffer("");
    for (var i = base.length-1; i >= 0; i--) {
      reversed.write(base[i]);
    }
    return int.parse(reversed.toString()) ;
  }

//escalera
  String getStairs(int width) {
    StringBuffer buffer = StringBuffer("");

    for (var index_w = 0; index_w < width; index_w++) {
      for (var index = 0; index < index_w+1; index++) {
        buffer.write("[-]");
      }
      buffer.write("\n");
    }

    return buffer.toString();
  }

  bool isCapinua(int _base) {
    int base = getReversedInt(_base);
    return base == _base;
  }

  String getTriangle(int floors) {
    int maxWidth = (floors * 2) -1;
    StringBuffer buffer = StringBuffer("");
    for (var currentFloor = 1; currentFloor <= floors; currentFloor++) {
      int currentWidth = (currentFloor * 2) -1;
      int spaces = (maxWidth - currentWidth) ~/ 2;
      buffer.write((" " * (spaces)));
      buffer.write(("*" * (currentWidth)));
      buffer.write((" " * (spaces)));
      buffer.write("\n");
    }
    return buffer.toString();
  }
}