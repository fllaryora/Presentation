class UserHobby{

  String name;
  List<String> hobbies;
  UserHobby(this.name, this.hobbies);

   @override
   bool operator ==(Object other) {
     if(  other is UserHobby &&
         other.runtimeType == runtimeType &&
         other.name == name &&
         other.hobbies == hobbies ) {
       return true;
     }
     return false;
   }

   @override
   int get hashCode {
     int hash = Object.hash(name, hobbies);
     return hash;
   }
}
