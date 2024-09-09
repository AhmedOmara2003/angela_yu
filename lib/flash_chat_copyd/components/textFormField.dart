import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String text;
  final Icon prefixIcon;
  final bool isObscureText;
  final TextEditingController ?controller;

  const CustomTextFormFiled(
      {super.key,
        required this.text,
        required this.prefixIcon,
        this.isObscureText=false, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        hintText: text,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Colors.blueAccent, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Colors.blueAccent, width: 1.0)),
      ),
    );
  }
}
