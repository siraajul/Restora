import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, // Fix: Use Key? key instead of super.key
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w600,
    this.height,
    this.textAlign = TextAlign.left,
    this.maxLine,
    this.overflow,
    this.decoration,
    this.fontStyle,
    this.softWrap,
    required int maxLines,
    this.colors,
  }); // Fix: Move super call here

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double? height;
  final TextAlign textAlign;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
  final bool? softWrap;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: overflow,
      softWrap: softWrap,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        height: height,
        decoration: decoration,
        fontStyle: fontStyle,
        color: colors,
      ),
    );
  }
}
