import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color searchBarColor;
  final Color borderColor;
  final Color? iconColor;
  final VoidCallback? onSuffixIconTap; // Callback for suffix icon tap
  final VoidCallback? onSubmitted; // Callback for 'Enter' key press
  final VoidCallback? onPrefixIconTap; // Callback for prefix icon tap

  CustomSearchWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.searchBarColor = Colors.white,
    this.borderColor = Colors.grey,
    this.iconColor,
    this.onSuffixIconTap,
    this.onSubmitted,
    this.onPrefixIconTap,
  });

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: searchBarColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: borderColor),
      ),
      child: TextField(
        controller: _controller,
        onSubmitted: (_) {
          if (onSubmitted != null) {
            onSubmitted!();
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: prefixIcon != null
              ? GestureDetector(
                  onTap: () {
                    if (onPrefixIconTap != null) {
                      onPrefixIconTap!();
                    }
                  },
                  child: Icon(
                    prefixIcon,
                    color: iconColor,
                  ),
                )
              : null,
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  onTap: () {
                    if (onSuffixIconTap != null) {
                      onSuffixIconTap!();
                      _controller.clear(); // Clear text in the search box
                    }
                  },
                  child: Icon(
                    suffixIcon,
                    color: iconColor,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
