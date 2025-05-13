import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Color buttoncolor;
  final Color textcolor;
  final Color bordercolor;
  final VoidCallback onPressed;

  const DefaultButton({
    super.key,
    this.title = "Button", // Default title
    this.buttoncolor = Colors.blueAccent, // Default color
    this.textcolor = Colors.white, // Default text color
    this.bordercolor = Colors.transparent, // Default border color
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48, // Fixed height
      width: double.infinity, // Full width
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor, // Default blue color
          side: BorderSide(
            color: bordercolor, // Border color
            width: 2, // Border width
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Corner radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: textcolor, // White text color
            fontSize: 16, // Optional: Adjust font size
          ),
        ),
      ),
    );
  }
}