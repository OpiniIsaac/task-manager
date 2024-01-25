import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imagePath = 'images/Logo.png';

    // Add a delay to simulate the loading time
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the '/first' route after the delay
      Navigator.pushReplacementNamed(context, '/first');
    });

    return Scaffold(
      backgroundColor: Colors.white,
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