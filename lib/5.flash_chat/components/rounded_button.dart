import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onPressed;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(40.0),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        onPressed:onPressed,
        color: color,
        child:  Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
