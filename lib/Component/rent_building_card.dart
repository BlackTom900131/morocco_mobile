import 'package:flutter/material.dart';
import '../Models/rent_building.dart';

class RentBuildingCard extends StatelessWidget {
  final RentBuilding building;
  final VoidCallback onPressed;

  const RentBuildingCard({
    super.key,
    required this.building,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
      ),
      elevation: 4, // Subtle shadow for depth
      margin: const EdgeInsets.all(16.0), // Spacing around the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Building image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
            child: Image.asset(
              building.images.isNotEmpty ? building.images[0] : 'assets/images/placeholder.jpg',
              height: 160.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Building details
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  building.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  building.location,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '\$${building.pricePerMonth.toStringAsFixed(2)} / month',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'View Details',
                    style: TextStyle(color: Colors.white),
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