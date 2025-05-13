import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const DefaultButton({
    super.key,
    this.title = "Button", // Default title
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48, // Fixed height
      width: double.infinity, // Full width
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Default blue color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Corner radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white, // White text color
            fontSize: 16, // Optional: Adjust font size
          ),
        ),
      ),
    );
  }
}