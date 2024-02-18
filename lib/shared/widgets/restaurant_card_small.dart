import 'package:flutter/material.dart';

class RestaurantCardSmall extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String? subtitle;
  final String? description;
  final VoidCallback? onTap;

  RestaurantCardSmall({
    required this.imageUrl,
    required this.title,
    this.subtitle,
    this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: SizedBox(
            width: cardWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        subtitle!, // Displaying subtitle
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey, // Adjust color as needed
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        description!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
