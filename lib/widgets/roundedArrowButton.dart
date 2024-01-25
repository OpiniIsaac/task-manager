import 'package:flutter/material.dart';

class RoundedArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RoundedArrowButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: Colors.teal, // Set the desired background color
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward,
          color: Colors.white, // Set the desired icon color
        ),
        onPressed: onPressed,
      ),
    );
  }
}


