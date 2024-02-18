import 'package:flutter/material.dart';
import 'package:restora/shared/models/onboarding/onBoarding_price_model.dart';
import 'package:restora/shared/models/restaurant_details/restaurant_list.dart';
import 'package:restora/shared/models/review/review_data_model.dart';

// List<OnboardingCategoryDTO> dummyFoodCategory = [
//   OnboardingCategoryDTO(
//     itemName: 'Pizza',
//     icon: Icons.local_pizza,
//   ),
//   OnboardingCategory(itemName: 'Burger', icon: Icons.fastfood),
//   OnboardingCategory(itemName: 'Salad', icon: Icons.local_dining),
//   OnboardingCategory(itemName: 'Pasta', icon: Icons.local_drink_rounded),
//   OnboardingCategory(itemName: 'Sushi', icon: Icons.rice_bowl),
//   OnboardingCategory(itemName: 'Ice Cream', icon: Icons.icecream),
//   OnboardingCategory(itemName: 'Coffee', icon: Icons.local_cafe),
//   OnboardingCategory(itemName: 'Doughnut', icon: Icons.donut_large),
//   OnboardingCategory(itemName: 'Sandwich', icon: Icons.fastfood),
//   OnboardingCategory(itemName: 'Hot Dog', icon: Icons.local_hotel),
//   OnboardingCategory(itemName: 'Fries', icon: Icons.fastfood),
//   OnboardingCategory(itemName: 'Cupcake', icon: Icons.cake),
// ];

List<OnBoardingPrice> prices = [
  OnBoardingPrice(containerText: '৳', priceText: '৫০০'),
  OnBoardingPrice(containerText: '৳৳', priceText: '১২০০'),
  OnBoardingPrice(containerText: '৳৳৳', priceText: '২০০০'),
  OnBoardingPrice(containerText: '৳৳৳৳', priceText: '৩০০০'),
];

List<ReviewData> reviews = [
  ReviewData(
    name: 'Sirajul Islam',
    rating: 5,
    reviewText:
        'We tried Haydrabadi Biriani and another item i forget the name. Both was fantastic. Very nice and quiet place though their service and menu card wasn’t top notch. Still one of the best in Brahmanbaria.',
  ),
  ReviewData(
    name: 'Mehedi Hasan',
    rating: 5,
    reviewText:
    'We tried Haydrabadi Biriani and another item i forget the name. Both was fantastic. Very nice and quiet place though their service and menu card wasn’t top notch. Still one of the best in Brahmanbaria.',
  ),
  ReviewData(
    name: 'Mosabbir Ahmed',
    rating: 5,
    reviewText:
    'We tried Haydrabadi Biriani and another item i forget the name. Both was fantastic. Very nice and quiet place though their service and menu card wasn’t top notch. Still one of the best in Brahmanbaria.',
  ),

  // Add more reviews as needed
];

List<Restaurant> restaurantList = [
  Restaurant(
    imageUrl:
    'https://lh5.googleusercontent.com/p/AF1QipPIpIxIQZ8TB74PhdK13NnX3bX0xw3R6Hzxkjmy=w480-h300-k-n-rw',
    title: 'Pizzaburg',
    description: 'Delicious pizza and more!',
    subtitle: 'Pizza, Pasta, Salads',
  ),
  // Add more restaurants if needed
];



