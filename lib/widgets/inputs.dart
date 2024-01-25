import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final String label;
  final String hintText;
  final Icon icons;
  const Inputs({ required this.hintText, required this.icons,required this.label, Key? key }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Email:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0), // Add some space between text and text field
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email), // Email Icon
              hintText: 'example@gmail.com',
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
