import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/tag/food_tag.dart';

import '../../static.dart';
import '../models/onboarding/onBoarding_category_dto.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({Key? key, required this.categoryList});

  final List<OnboardingCategoryDTO> categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0, // Set the height of the horizontal ListView
      child: Row(
        children: List.generate(
          categoryList.length, // Replace with the actual number of items
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FoodTag(
                itemName: categoryList[index].name ?? '',
                isSelected: index == 1,
              ),
            );
          },
        ),
      ),
    );
  }
}
