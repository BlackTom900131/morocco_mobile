import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color buttoncolor;
  final Color textcolor;
  final Color bordercolor;
  final double buttonheight;
  final VoidCallback onPressed;

  const CustomCard({
    super.key,
    this.title = "Button", // Default title
    required this.icon, // Icon is required
    this.buttoncolor = Colors.blueAccent, // Default button color
    this.textcolor = Colors.black, // Default text color
    this.bordercolor = Colors.transparent, // Default border color
    this.buttonheight = 48.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: bordercolor),
      ),
      elevation: 0, // No shadow effect
      child: Column(
        children: [
          // Horizontal scroll view for images
          SizedBox(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
                Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
                Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
              ],
            ),
          ),
          // Information about the building
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: textcolor,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Investment Opportunity',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: textcolor.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: onPressed,
                  icon: Icon(icon, color: Colors.white),
                  label: Text(
                    'Learn More',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttoncolor,
                    minimumSize: Size(double.infinity, buttonheight),
                    elevation: 0, // No shadow effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}