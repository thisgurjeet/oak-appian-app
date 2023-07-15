import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double contentPadding;

  const TextFieldInput({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(contentPadding),
        hintText: hintText,
        hintStyle: GoogleFonts.getFont('Lexend',
            fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
