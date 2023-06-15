class Hour {
   int hours;
  int minutes;
  int seconds;
   Hour(this.hours, this.minutes, this.seconds);

   void tick() {
     this.seconds++;
     if (this.seconds == 60) {
       this.seconds = 0;
       this.minutes++;
       if (this.minutes == 60) {
         this.minutes = 0;
         this.hours++;
         if (this.hours == 24) {
           this.hours = 0;
         }
       }
     }
   }

   @override
   bool operator ==(Object other) {
     if(  other is Hour &&
         other.runtimeType == runtimeType &&
         other.hours == hours &&
         other.minutes == minutes &&
         other.seconds == seconds) {
       return true;
     }
     return false;
   }

   @override
   int get hashCode {
     int hash = Object.hash(hours, minutes, seconds);
     return hash;
   }
}
