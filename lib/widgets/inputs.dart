import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final String label;
  final String labelText;
  final Icon icons;
  const Inputs({ required this.label, required this.icons,required this.labelText, Key? key }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0), // Add some space between text and text field
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: icons, // Email Icon
              hintText: labelText,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
