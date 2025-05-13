import 'package:flutter/material.dart';
import '../Component/default_button.dart';

class Boarding1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Testing")),
      body: Center(
        child: DefaultButton(
          title: "Click Me",
          onPressed: () {
            // Handle button press
            print("Button Pressed!");
          },
        ),
      ),
    );
  }
}