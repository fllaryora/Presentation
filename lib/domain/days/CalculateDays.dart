import 'package:presentation/data/days/DaysRow.dart';

class CalculateDays{
  DaysRow getCalculatedDays(int days) {
    const daysInAYear = 365;
    const daysInAMonth = 30;
    var rest = days;
    int years = rest ~/ daysInAYear;
    rest -= (years * daysInAYear);
    int months = rest ~/ daysInAMonth;
    rest -= (months * daysInAMonth);
    return DaysRow(rest,months,years);
  }
}