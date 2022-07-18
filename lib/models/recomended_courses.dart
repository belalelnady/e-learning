class RecomCourse {
  final String id;
  final String instructor;
  final String name;
  final String image;
  final double price;
  final double rating;

  RecomCourse({
    required this.id,
    required this.instructor,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
  });
  factory RecomCourse.formJson(Map<String, dynamic> json) {
    return RecomCourse(
      id: json['id'],
      instructor: json['instructor'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      rating: json['rating'],
    );
  }
}
