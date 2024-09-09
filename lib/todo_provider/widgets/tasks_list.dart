import 'package:angela_yu/todo_provider/models/task_model.dart';
import 'package:angela_yu/todo_provider/widgets/task_tile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasksList extends StatelessWidget {
  TasksList({super.key});

  List <TaskModel>tasks = [
    TaskModel(name: 'get milk'),
    TaskModel(name: 'get coffee'),
    TaskModel(name: 'get milk'),
    TaskModel(name: 'get milk'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(),
      itemCount: 4,
    );
  }
}
