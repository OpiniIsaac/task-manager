import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/breadcrumbs.dart';
import 'package:task_managaer/widgets/roundedArrowButton.dart';

class SecondWelcome extends StatelessWidget {
  const SecondWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = 'images/secondscreen.png';

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
                  'Increase Productivity',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Text(
                  'Organize tasks with categories, prioritize using due dates, group related tasks. Regularly review your task list for efficient management.',
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
                    BreadCrumbs(first: Colors.tealAccent,second: Colors.teal,third: Colors.tealAccent),
                    RoundedArrowButton(onPressed: () {})
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
