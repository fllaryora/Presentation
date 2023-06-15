import 'package:presentation/data/multiplication/MultiplicationRow.dart';

class Percentage {
//Percentage = (Value/Total_Value)×100
// = (Value/Total_Value)
//Value = (Percentage/100) * Total_Value
  //Ej
  // 20.0 = percent (the 20%) of total = 100 , is 20
  // 43.0 = percent (the 43%) of total = 897 , is 385.71
  double getNumberOfPercentageOfTotal(double numberPercent, double total) {
    return (numberPercent / 100.0) * total;
  }

  double getPercentageOfIn(double number, double total) {
    if(total == 0.0) {
      return double.infinity;
    }
    return (number / total) * 100.0;
  }

  int getOddnumberBetween(int number, int secondNumber) {
    if(number > secondNumber) {
      return -1;
    }
    int subTotal = ((secondNumber - number)~/ 2) ;
    if(secondNumber.isOdd || number.isOdd) {
      subTotal ++;
    }
    return subTotal;
  }



}