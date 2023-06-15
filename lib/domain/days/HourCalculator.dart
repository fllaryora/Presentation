import 'dart:async';

import 'package:presentation/data/days/Hour.dart';

class HourCalculator {
  late Hour myHour;
  late Timer myTimer;

  late StreamController<Hour> myHourStream;

  HourCalculator(DateTime dateTime) {
    myHour = Hour(dateTime.hour, dateTime.minute, dateTime.second);
    myTimer = Timer(const Duration(milliseconds: 1000), handleTimeout);
    //I use broadcast because many listeners.
    myHourStream = StreamController();
    myHourStream.sink.add(myHour);
    print ("The time is ${myHour.hours}:${myHour.minutes}:${myHour.seconds}");
  }
  void handleTimeout() {
    myHour.tick();
    myHourStream.sink.add(myHour);
    // callback function
    print ("The time is ${myHour.hours}:${myHour.minutes}:${myHour.seconds}");

  }
  void cancel(){
    myTimer.cancel();
    myHourStream.close();
  }
}


