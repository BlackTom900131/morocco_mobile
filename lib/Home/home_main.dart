// Home Page
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to the Home Page',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Explore our features below:',
                  style: TextStyle(fontSize: 18, color: Colors.black26),
                ),
                const SizedBox(height: 20),
                // Add your feature buttons or cards here
              ],
            ),
            const Spacer(), // Spacer to push the bell icon to the right
            // Bell icon
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                    print('Bell icon pressed');
                  },
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.blueAccent,
                  ),
                  color: Colors.lightBlue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}