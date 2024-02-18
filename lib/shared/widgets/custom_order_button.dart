import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

import 'custom_elevated_button.dart';

class CustomOrderButton extends StatelessWidget {
  final String itemCount;
  final String price;
  final VoidCallback onPressed;

  const CustomOrderButton({
    super.key,
    required this.itemCount,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.orange,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
            CustomText(text: itemCount, maxLines: 1, colors: Colors.white),
            CustomElevatedButton(
              text: 'রিজার্ভ করুন',
              textColor: Colors.white,
              buttonColor: Colors.deepOrangeAccent,
              onPressed: onPressed,
            ),
            CustomText(text: price, maxLines: 1, colors: Colors.white),
            const CustomText(text: '৳', maxLines: 1, colors: Colors.white),
          ],
        ),
      ),
    );
  }
}
