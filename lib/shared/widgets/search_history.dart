import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

class SearchHistory extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const SearchHistory({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    String displayeddescription = description.length > 20
        ? description.substring(0, 20) + '...' // Limiting to 30 characters
        : description;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                height: 50,
                width: 50,
                imageUrl: imageUrl,
                placeholder: (context, url) => const CircularProgressIndicator(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Flexible(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: title, maxLines: 1,),
                RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '\$\$',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: '\$ $displayeddescription',
                        style: const TextStyle(color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
