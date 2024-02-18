import 'package:flutter/material.dart';

import '../widget/photo_grid.dart';

class RestaurantPhotoTab extends StatelessWidget {
  const RestaurantPhotoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PhotoGrid(),
    );
  }
}
