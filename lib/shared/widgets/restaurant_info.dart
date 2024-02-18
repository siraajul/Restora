import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

class RestaurantInfo extends StatelessWidget {
  final String title;
  final String cuisine;
  final String timing;
  final IconData icon;
  final double rating;

  const RestaurantInfo({
    super.key,
    required this.title,
    required this.cuisine,
    required this.timing,
    required this.icon,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 8,
          child: Container(
            color: Colors.grey.shade200,
            height: 101,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    text: title,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(height: 5,),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '\$\$',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '\$ $cuisine',
                          style: const TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Icon(Icons.watch_later_outlined),
                      const SizedBox(width: 5,),
                      RichText(
                        text: TextSpan(
                          text: timing,
                          style: const TextStyle(color: Colors.deepOrange),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

        Flexible(
          flex: 2,
          child: Container(
            color: Colors.grey.shade200,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(icon),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.star_half, color: Colors.deepOrangeAccent),
                      const SizedBox(width: 5,),
                      RichText(
                        text: TextSpan(
                          text: rating.toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
