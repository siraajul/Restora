import 'package:flutter/material.dart';

class CustomTextHeadingContainer extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  CustomTextHeadingContainer(
      {super.key,
      required this.text,
      required this.textColor,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width, // Responsive width
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
