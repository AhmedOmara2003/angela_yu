import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onPressed, required this.text});

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(20.0),
      child: MaterialButton(
        color: kBaseColor,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        onPressed: onPressed,
        child: Text(
          text,
          style: kBottomButtonTextStyle,
        ),
      ),
    );
  }
}
