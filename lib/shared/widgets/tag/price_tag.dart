import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';

class PriceTag extends StatefulWidget {
  const PriceTag({
    Key? key,
    required this.containerText,
    required this.priceText,
    required this.isSelected,
  }) : super(key: key);

  final String containerText;
  final String priceText;
  final bool isSelected;

  @override
  _PriceTagState createState() => _PriceTagState();
}

class _PriceTagState extends State<PriceTag> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Color containerColor = isSelected ? Colors.orange : ConstColors.lightContainer;
    Color textColor = isSelected ? Colors.white : Colors.black;

    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: containerColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  widget.containerText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '<${widget.priceText}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
