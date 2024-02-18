import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'texts/custom_text.dart';

class CustomReviewWidget extends StatelessWidget {
  final String name;
  final double rating;
  final String reviewText;

  const CustomReviewWidget({
    super.key,
    required this.name,
    required this.rating,
    required this.reviewText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: name, maxLines: 1),
          const SizedBox(height: 05,),
          RatingBarIndicator(
            rating: rating,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 10.0,
            direction: Axis.horizontal,
          ),
          CustomText(
            text: reviewText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            fontSize: 10,
          ),
        ],
      ),
    );
  }
}