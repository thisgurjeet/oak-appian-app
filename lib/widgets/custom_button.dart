import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custombutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const Custombutton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 79, 29, 155),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.getFont('Lexend',
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
