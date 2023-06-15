
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/data/days/Hour.dart';
import 'package:presentation/domain/days/HourCalculator.dart';

void main() {


  group('Crear un reloj que valla mostrando la hora a cada segundo', ()
  //solo se puede llamar a date al principio, luego no.
  {
    test('Exercice 33', () async{
      var thisMoment = DateTime.now();
      HourCalculator hoursTicker = HourCalculator(thisMoment);
      int thisSecond = thisMoment.second;
      int thisMinute = thisMoment.minute;
      int thisHour = thisMoment.hour;
      Hour  expectedHour = Hour(thisHour, thisMinute, thisSecond);
      Hour  expectedHourTwo = Hour(thisHour, thisMinute, thisSecond);
      expectedHourTwo.tick();

      //expectLater works just like expect,
      // but returns a Future that completes when the matcher has finished matching.
      expectLater(hoursTicker.myHourStream.stream, emitsInOrder([
        expectedHour,
        expectedHourTwo,
      ]));
      await Future.delayed(const Duration(seconds: 3));
      hoursTicker.cancel();

    });

  });

}