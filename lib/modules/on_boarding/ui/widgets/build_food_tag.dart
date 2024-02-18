import 'package:flutter/material.dart';
import '../../../../shared/models/onboarding/onBoarding_category_dto.dart';
import '../../../../shared/widgets/tag/food_tag.dart';
import '../../../../static.dart';

Widget buildFoodTags(List<OnboardingCategoryDTO> foodCategories) {
  List<Widget> rows = [];

  for (int i = 0; i < foodCategories.length; i += 3) {
    List<Widget> rowChildren = [];

    for (int j = i; j < i + 3 && j < foodCategories.length; j++) {
      rowChildren.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FoodTag(
            itemName: foodCategories[j].name ?? '',
            // icon: dummyFoodCategory[j].icon,
            isSelected: true,
          ),
        ),
      );
    }

    rows.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: rowChildren,
      ),
    );
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: rows,
  );
}
