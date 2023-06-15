// the base class which contains differents data types which can contains
abstract class ListItem {}

// A ListItem which contains a heading
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem which contains a message
class MessageItem implements ListItem {
  final String first_operand;
  final String second_operand;
  final String result;

  MessageItem(this.first_operand, this.second_operand, this.result);
}