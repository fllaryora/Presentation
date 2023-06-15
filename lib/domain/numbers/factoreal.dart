class Factoreal{
  //5! = 1 x 2 x 3 x 4 x 5
 int getFactoreal(int base) {

    if(base <= 2) {
      return base;
    }
    var acumulator = 2;
    for(int index = 3; index <= base; index++){
      acumulator *= index;
    }
    return acumulator;
  }
}