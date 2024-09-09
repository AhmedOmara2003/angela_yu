import 'package:flutter/material.dart';

InputDecoration kTextFormField = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(color: Colors.blueAccent, width: 1.0)),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(color: Colors.blueAccent, width: 1.0)),
  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
);
