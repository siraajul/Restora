import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.leading,
    this.trailing,
    this.titleWidget,
    this.onPress, // Added onTap callback
  });

  final String title;
  final String subtitle;
  final Widget? leading;
  final Widget? trailing;
  final Widget? titleWidget;
  final VoidCallback? onPress; // Declare onTap callback

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: onPress, // Attach onTap callback to GestureDetector
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 2.5),
          child: Row(
            children: [
              // Left Icon
              if (leading != null) leading!,
              const SizedBox(
                width: 10,
              ),
              // Title and Subtitle in the Middle
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleWidget == null
                        ? Text(
                            title,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          )
                        : titleWidget!,
                    const SizedBox(height: 4), // Adjust as needed
                    Text(
                      subtitle,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Right Icon
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size(double.maxFinite, 69); // Adjust as needed
}
