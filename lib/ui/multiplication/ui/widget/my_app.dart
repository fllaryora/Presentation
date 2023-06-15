import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:presentation/ui/multiplication/data/multiplication_list.dart';

class MultiplicationApp extends StatelessWidget {
  final List<ListItem> items;

  MultiplicationApp({required Key key, required this.items}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final title = 'Multiplication Table';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),

        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            if (item is HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  //style: Theme.of(context).textTheme.headline1,
                ),
              );
            } else if (item is MessageItem) {
              return Text(
                key: Key("${item.first_operand}"),
                "${item.first_operand} X ${item.second_operand} = ${item.result}",
              );
            }
            //This in last versions wasn't be checked.
            return Container();
          },
        ),
      ),
    );
  }


}
