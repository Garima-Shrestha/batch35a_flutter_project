import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.errorMessage,
  });

  // callback
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: labelText,
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        // if (int.tryParse(value) == null) {
        //   return "Please enter a valid number"; // new numeric check
        // }
        return null;
      }
    );
  }
}
