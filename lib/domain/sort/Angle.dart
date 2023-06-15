enum Angles { ACUTE, //agudo
  RIGHT,//recto
  OBTUSE, //obtuso
  STRAIGHT, //llano
  REFLEX, //convexo
  FULL, //completo
  ERROR}
class AngleClassificator {
  Angles getClassificationByAngle(int angleNumber) {
    if(angleNumber > 360){
      angleNumber %= 360;
      if(angleNumber == 0){
        angleNumber = 360;
      }
    }
    if( angleNumber < 90){
      return Angles.ACUTE;
    }
    if(angleNumber == 90){
      return Angles.RIGHT;
    }
    if(angleNumber < 180){
      return Angles.OBTUSE;
    }
    if(angleNumber == 180){
      return Angles.STRAIGHT;
    }
    if(angleNumber < 360){
      return Angles.REFLEX;
    }
    if(angleNumber == 360){
      return Angles.FULL;
    }
    return Angles.ERROR;
  }
}