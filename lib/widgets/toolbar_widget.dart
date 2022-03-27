import 'package:flutter/material.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text('4 todos'),
        ),
        Tooltip(
          message: 'All todos',
          child: TextButton(onPressed: () {}, child: Text('All')),
        ),
        Tooltip(
          message: 'Only Uncomplated Todos',
          child: TextButton(onPressed: () {}, child: Text('Active')),
        ),
        Tooltip(
          message: 'Only Completed Todos',
          child: TextButton(onPressed: () {}, child: Text('Completed')),
        ),
      ],
    );
  }
}
