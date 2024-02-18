import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 400,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // Adjust alignment here
            children: [
              if (prefixIcon != null) Icon(prefixIcon, color: textColor),
              SizedBox(width: prefixIcon != null ? 8.0 : 0.0), // Adjust spacing
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              SizedBox(width: suffixIcon != null ? 8.0 : 0.0), // Adjust spacing
              if (suffixIcon != null) Icon(suffixIcon, color: textColor),
            ],
          ),
        ),
      ),
    );
  }
}
