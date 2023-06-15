class Student{
   int calification;
  String name;
   Student(this.name, this.calification);

   @override
   bool operator ==(Object other) {
     if(  other is Student &&
         other.runtimeType == runtimeType &&
         other.name == name &&
         other.calification == calification ) {
       return true;
     }
     return false;
   }

   @override
   int get hashCode {
     int hash = Object.hash(name, calification);
     return hash;
   }
}
