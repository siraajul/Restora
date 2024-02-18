import 'package:flutter/material.dart';

// class OnboardingCategory {
//   const OnboardingCategory({
//     required this.itemName,
//     required this.icon,
//   });
//
//   final String itemName;
//   final IconData icon;
// }

class OnboardingCategoryDTO {
  String? id;
  String? name;
  int? displayOrder;
  String? imageId;
  String? restaurantId;

  OnboardingCategoryDTO(
      {this.id, this.name, this.displayOrder, this.imageId, this.restaurantId});

  OnboardingCategoryDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    displayOrder = json['displayOrder'];
    imageId = json['imageId'];
    restaurantId = json['restaurantId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['displayOrder'] = this.displayOrder;
    data['imageId'] = this.imageId;
    data['restaurantId'] = this.restaurantId;
    return data;
  }
}
