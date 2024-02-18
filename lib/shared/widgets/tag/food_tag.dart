import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';

class FoodTag extends StatefulWidget {
  const FoodTag({
    super.key,
    required this.itemName,
    this.icon = Icons.fastfood,
    this.isSelected = false, // Provide a default value
  });

  final String itemName;
  final bool isSelected;
  final IconData icon;

  @override
  _FoodTagState createState() => _FoodTagState();
}

class _FoodTagState extends State<FoodTag> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: isSelected ? Colors.orange : ConstColors.lightContainer,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                widget.icon,
                color: isSelected ? Colors.white : Colors.black,
                size: 40,
              ),
            ),
          ),
          Text(
            widget.itemName,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
