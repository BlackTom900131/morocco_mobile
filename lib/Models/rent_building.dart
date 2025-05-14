class RentBuilding {
  final String id;
  final String name;
  final String location;
  final double pricePerMonth;
  final int bedrooms;
  final int bathrooms;
  final double area; // in square meters
  final List<String> images; // List of image URLs or asset paths
  final String description;

  RentBuilding({
    required this.id,
    required this.name,
    required this.location,
    required this.pricePerMonth,
    required this.bedrooms,
    required this.bathrooms,
    required this.area,
    required this.images,
    required this.description,
  });

  // Example: Convert to JSON (useful for APIs or local storage)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'pricePerMonth': pricePerMonth,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'area': area,
      'images': images,
      'description': description,
    };
  }

  // Example: Create from JSON
  factory RentBuilding.fromJson(Map<String, dynamic> json) {
    return RentBuilding(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      pricePerMonth: json['pricePerMonth'],
      bedrooms: json['bedrooms'],
      bathrooms: json['bathrooms'],
      area: json['area'],
      images: List<String>.from(json['images']),
      description: json['description'],
    );
  }
}