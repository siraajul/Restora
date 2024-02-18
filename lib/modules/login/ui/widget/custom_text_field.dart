import 'package:flutter/material.dart';

class CustomInputTextField extends StatelessWidget {
  const CustomInputTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixText: '+88',
          isCollapsed: false,
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.orange,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black26, width: 2),
          )),
    );
  }
}
