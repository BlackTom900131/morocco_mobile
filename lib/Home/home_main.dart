// Home Page
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 50.0,),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome, Bash',
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Poppins', color: Colors.black,),
                          ),
                          const Text(
                            'Explore our features below:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Poppins', color: Colors.grey,),
                          ),
                          // Add your feature buttons or cards here
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(), // Spacer to push the bell icon to the right
                // Bell icon
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                        color: const Color(0x1A2563EB),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                          print('Bell icon pressed');
                        },
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.blueAccent,
                          size: 24.0,
                        ),
                        iconSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0x1A2563EB),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                          onPressed: () {
                            // Add your filter functionality here
                            print('Filters icon pressed');
                          },
                          icon: const Icon(
                            Icons.filter_list,
                            color: Colors.blueAccent,
                            size: 24.0,
                          ),
                          iconSize: 24.0,
                          ),
                          const Text(
                            'Filters',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}