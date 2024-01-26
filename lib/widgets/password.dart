import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String label;
  final String labelText;
  final Icon icons;
  final bool isPassword;

  const PasswordInput({
    required this.label,
    required this.icons,
    required this.labelText,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0), // Add some space between text and text field
          TextField(
            keyboardType: widget.isPassword
                ? TextInputType.visiblePassword
                : TextInputType.emailAddress,
            obscureText: widget.isPassword ? !_isPasswordVisible : false,
            decoration: InputDecoration(
              prefixIcon: widget.icons, // Icon
              hintText: widget.labelText,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                  : null,
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
