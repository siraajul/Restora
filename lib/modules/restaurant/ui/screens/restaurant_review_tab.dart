import 'package:flutter/material.dart';

import '../../../../shared/widgets/user_rating.dart';
import '../../../../static.dart';

class RestaurantReviewTab extends StatefulWidget {
  const RestaurantReviewTab({Key? key}) : super(key: key);

  @override
  _RestaurantReviewTabState createState() => _RestaurantReviewTabState();
}

class _RestaurantReviewTabState extends State<RestaurantReviewTab> {
  // Sample data, replace this with your API call logic

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: reviews.map((review) {
          return CustomReviewWidget(
            name: review.name,
            rating: review.rating,
            reviewText: review.reviewText,
          );
        }).toList(),
      ),
    );
  }
}
