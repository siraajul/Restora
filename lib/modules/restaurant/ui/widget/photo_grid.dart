import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  final List<String> photos = [
    'https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.6666666666666667xw:1xh;center,top&resize=1200:*',
    'https://www.thecookierookie.com/wp-content/uploads/2023/04/featured-stovetop-burgers-recipe.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/190130-chicken-shwarma-horizontal-1549421250.png?crop=0.668xw:1.00xh;0.168xw,0&resize=1200:*',
    'https://www.recipetineats.com/wp-content/uploads/2022/09/Fries-with-rosemary-salt_1.jpg',
    'https://www.allrecipes.com/thmb/AtViolcfVtInHgq_mRtv4tPZASQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ALR-187822-baked-chicken-wings-4x3-5c7b4624c8554f3da5aabb7d3a91a209.jpg'
  ];

  PhotoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildRows(),
    );
  }

  List<Widget> _buildRows() {
    List<Widget> rows = [];

    for (int i = 0; i < photos.length; i += 2) {
      List<Widget> rowChildren = [];

      // Add the first photo in the row
      rowChildren.add(_buildPhotoItem(photos[i]));

      // Check if there is a second photo in the row
      if (i + 1 < photos.length) {
        rowChildren.add(_buildPhotoItem(photos[i + 1]));
      }

      // Add the row to the list of rows
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: rowChildren,
        ),
      );
    }

    return rows;
  }

  Widget _buildPhotoItem(String photoUrl) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Adjust the corner radius as needed
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CachedNetworkImage(
          imageUrl: photoUrl,
          width: 150.0, // Adjust the width as needed
          height: 150.0, // Adjust the height as needed
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
