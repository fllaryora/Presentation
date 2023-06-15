import 'package:presentation/data/multiplication/MultiplicationRow.dart';

class MultiplicationTable {

  List<MultiplicationRow> multiplicationTableLength(int base, int index_base, int length) {
    List<MultiplicationRow> results = <MultiplicationRow>[];
    for(int index = index_base; index <= length; index++) {
      results.add(MultiplicationRow(index, base,index * base));
    }
    return results;
  }
 List<MultiplicationRow> multiplicationTable(int base) {
   return multiplicationTableLength( base,1, 10);
 }


}