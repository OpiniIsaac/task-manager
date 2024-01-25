import 'package:flutter/material.dart';

class FirstWelcomeScreen extends StatelessWidget {
  const FirstWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = 'images/firstscreen.png';

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center, // Center the children within the Container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  imagePath,
                  width: 200,
                  height: 300,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Text('Error loading image'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Stay Organized',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Text(
                  'Break tasks into smaller chunks, set goals with deadlines, turn off notifications to eliminate distractions. Take regular breaks for enhanced productivity.',
                
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
