import 'package:flutter/material.dart';

class CircularNumberWidget extends StatelessWidget {
  final String number;
  final Color containerColor;
  final Color textColor;
  final Color borderColor;

  const CircularNumberWidget({
    super.key,
    required this.number,
    required this.containerColor,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: containerColor,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 25,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
