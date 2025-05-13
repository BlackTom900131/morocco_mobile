import 'package:flutter/material.dart';
import '../Component/default_button.dart';

class Boarding1View extends StatelessWidget {
  const Boarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Testing")),
      body: Center(
        child: DefaultButton(
          title: "Click Me",
          buttoncolor: Colors.redAccent,
          onPressed: () {
            // Handle button press
            print("Button Pressed!");
          },
        ),
      ),
    );
  }
}