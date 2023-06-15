import 'package:presentation/data/Student.dart';

class StudentClassificator{

  Map<String, List<Student>> getClassification(List<Student> base, int minmalAprovationNote) {
  Map<String, List<Student>> result = {};
    if(base.isNotEmpty){
      List<Student> approved = base.where((student) => student.calification >= minmalAprovationNote).toList();
      List<Student> failed = base.where((student) => student.calification < minmalAprovationNote).toList();
      result["approved"] = approved;
      result["failed"] = failed;
    }
    return result;
  }
}