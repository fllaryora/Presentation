import 'dart:math';

class RandomNumber {
  int getMyRandom(int start, int end) {
    if(start < 0) {
      start = 0;
    }
    if(end < 0) {
      end = 0;
    }
    if(end < start) {
      var temp = start;
      start = end;
      end = temp;
    }
    //between 0 and 1
    double number = Random().nextDouble();
    double range = (number * (end - start)) + start;
    return range.round();
  }
}