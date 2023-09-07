import 'package:flutter/material.dart';
import 'package:login_screen/utils/pallete.dart';

class TextInput extends StatelessWidget {
  final String label;
  TextInput({super.key, required this.label});

  final OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Pallete.borderColor,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
