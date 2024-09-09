import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class TaskTile extends StatefulWidget {
// final String name;
//  bool isDone;
//
//    TaskTile({super.key, required this.name, required this.isDone});
//
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile>  {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         widget.name,
//         style: TextStyle(fontWeight: FontWeight.bold,decoration:widget.isDone?TextDecoration.lineThrough:null ),
//       ),
//       trailing: Checkbox(value: widget.isDone, onChanged: (value) {
//         setState(() {
//           widget.isDone=value!;
//         });
//       }),
//     );
//   }
// }
// ignore: must_be_immutable
class TaskTile extends StatefulWidget {
final String ?name;
 bool ?isDone;

   TaskTile({super.key,  this.name,  this.isDone});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile>  {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.name!,
        style: TextStyle(fontWeight: FontWeight.bold,decoration:widget.isDone!?TextDecoration.lineThrough:null ),
      ),
      trailing: Checkbox(value: widget.isDone, onChanged: (value) {
        setState(() {
          widget.isDone=value!;
        });
      }),
    );
  }
}
