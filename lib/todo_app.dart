// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app_using_riverpod/models/todo_model.dart';
import 'package:todo_app_using_riverpod/widgets/title_widget.dart';
import 'package:todo_app_using_riverpod/widgets/todo_list_item_widget.dart';
import 'package:todo_app_using_riverpod/widgets/toolbar_widget.dart';
import 'package:uuid/uuid.dart';

class TodoApp extends StatelessWidget {
  TodoApp({Key? key}) : super(key: key);

  final newTodoController = TextEditingController();

  List<TodoModel> allTodos = [
    TodoModel(id: Uuid().v4(), description: 'Spora git'),
    TodoModel(id: Uuid().v4(), description: 'Alışveriş Yap'),
    TodoModel(id: Uuid().v4(), description: 'Spora git'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          TitleWidget(),
          TextField(
            controller: newTodoController,
            decoration: InputDecoration(labelText: 'Bugün neler yapcan'),
            onSubmitted: (newTodo) {
              debugPrint('şunu ekle $newTodo');
            },
          ),
          SizedBox(
            height: 20,
          ),
          ToolBarWidget(),
          for (var i = 0; i < allTodos.length; i++)
            Dismissible(
              key: ValueKey(allTodos[i].id),
              onDismissed: (_) {},
              child: TodoListItemWidget(
                item: allTodos[i],
              ),
            ),
        ],
      ),
    );
  }
}
