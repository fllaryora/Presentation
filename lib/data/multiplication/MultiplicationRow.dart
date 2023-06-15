

class MultiplicationRow {
  int firstOperand;
  int secondOperand;
  int result;
  MultiplicationRow(this.firstOperand, this.secondOperand,
      this.result);

  @override
  bool operator ==(Object other) {
    if(  other is MultiplicationRow &&
        other.runtimeType == runtimeType &&
        other.firstOperand == firstOperand &&
        other.secondOperand == secondOperand &&
        other.result == result) {
      return true;
    }
    return false;
  }

  @override
  int get hashCode {
    int hash = Object.hash(firstOperand, secondOperand, result);
    return hash;
  }
}