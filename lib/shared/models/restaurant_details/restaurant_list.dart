class Restaurant {
  final String imageUrl;
  final String title;
  final String? subtitle;
  final String? description;

  Restaurant({
    required this.imageUrl,
    required this.title,
    this.subtitle,
    this.description,
  });
}