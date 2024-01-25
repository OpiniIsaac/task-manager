import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imagePath = 'images/Logo.png';

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SafeArea(
        child: Center(
          child: Image.asset(
            imagePath,
            width: 200,
            height: 200,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => const Text('Error loading image'),
          ),
        ),
      ),
    );
  }
}
