class Course {
  final String id;
  final String categoryId;
  final String instructor;
  final String title;
  final String description;
  final String image;
  final String video;
  final List<dynamic> whatWillulearn;
  final double price;
  final double rating;

  Course({
    required this.whatWillulearn,
    required this.id,
    required this.categoryId,
    required this.instructor,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.video,
  });
  factory Course.formJson(Map<String, dynamic> json) {
    return Course(
        id: json['id'],
        categoryId: json['categoryId'],
        instructor: json['instructor'],
        title: json['title'],
        description: json['description'],
        image: json['image'],
        whatWillulearn: json['whatWillulearn'],
        price: json['price'],
        rating: json['rating'],
        video: json["video"]);
  }
}
