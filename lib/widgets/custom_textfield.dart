import 'package:flutter/material.dart';
import '../util/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText; // Define the field

  const CustomTextField({
    super.key,
    this.hintText, // Assign from constructor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText, // Use the field here
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.red,
            width: 2.0,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
    );
  }
}
