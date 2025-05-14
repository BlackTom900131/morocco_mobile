import 'package:flutter/material.dart';

class IconButtonWithText extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color buttoncolor;
  final Color textcolor;
  final Color bordercolor;
  final double buttonheight;
  final VoidCallback onPressed;

  const IconButtonWithText({
    super.key,
    this.title = "Button", // Default title
    required this.icon, // Icon is required
    this.buttoncolor = Colors.blueAccent, // Default button color
    this.textcolor = Colors.white, // Default text color
    this.bordercolor = Colors.transparent, // Default border color
    this.buttonheight = 48.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight, // Fixed height 
      width: double.infinity, // Full width
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor, // Button color
          side: BorderSide(
            color: bordercolor, // Border color
            width: 2, // Border width
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Corner radius
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: textcolor, // Icon color matches text color
            ),
            const SizedBox(width: 10), // Space between icon and text
            Text(
              title,
              style: TextStyle(
                color: textcolor, // Text color
                fontSize: 16, // Font size
              ),
            ),
          ],
        ),
      ),
    );
  }
}