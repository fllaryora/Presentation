import 'package:presentation/data/UserHobby.dart';

class HobbyCounter {
  Map<String, int> getHobbyCount(List<UserHobby> base) {
    Map<String, int> result = {};
    if(base.isNotEmpty) {
      base.forEach((UserHobby userHobby) {
        userHobby.hobbies.forEach((String hobby) {
          int lastCount = result[hobby] ?? 0;
          result[hobby] = lastCount + 1;
        });
      });
    }
    return result;
  }
}