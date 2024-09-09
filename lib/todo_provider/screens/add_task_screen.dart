import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0),
            child: TextFormField(

              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              decoration: InputDecoration(
                hintText: 'Enter your task',

              ),
            ),
          ),
          MaterialButton(
            color: Colors.lightBlueAccent,
            onPressed: () {},
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
