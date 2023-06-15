
class Calculator {
  Map<String, int> calculate(int operand, int operand2) {
    return {
      "sum": operand+operand2,
      "minus": operand-operand2,
      "times": operand*operand2,
      "divide": operand2 != 0 ? (operand ~/ operand2) : 0,
    };
  }
}