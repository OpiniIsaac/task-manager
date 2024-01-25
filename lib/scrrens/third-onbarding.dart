import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/breadcrumbs.dart';

class ThirdWelcome extends StatelessWidget {
  const ThirdWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = 'images/thirdscreen.png';

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment:
              Alignment.center, // Center the children within the Container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  imagePath,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Text('Error loading image'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Collaborate Effectively',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Text(
                  'Use comments for updates and questions, share files related to tasks,. Schedule regular check-ins for effective communication and collaboration.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BreadCrumbs(first: Colors.tealAccent,second: Colors.tealAccent,third: Colors.teal),
                    ElevatedButton(
                      onPressed: () {
                             Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal, // Set the background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Set the rounded corners
                        ),
                      ),
                      child: const Text('Get Started',style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
