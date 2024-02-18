import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
    required this.searchedText,
    required this.isSelected,
  });

  final String searchedText;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {

    String displayedText = searchedText.length > 30
        ? searchedText.substring(0, 30) + '...' // Limiting to 30 characters
        : searchedText;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : ConstColors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          displayedText,
          style: TextStyle(
              fontSize: 15, color: isSelected ? Colors.white : Colors.black),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}
