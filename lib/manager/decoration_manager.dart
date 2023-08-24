import 'package:flutter/material.dart';

class DecorationManager {
  static InputDecoration buildInputDecoration(
      {required String hint,
      Color borderColor = Colors.white,
      Color hintColor = Colors.grey,
      Color? fillColor}) {
    return InputDecoration(
      filled: true,
      hintText: hint,
      hintStyle: TextStyle(color: hintColor),
      fillColor: fillColor,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor, width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor, width: 1)),
    );
  }
}
