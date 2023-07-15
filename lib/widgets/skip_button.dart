import 'package:flutter/material.dart';

class Skipbutton extends StatelessWidget {
  const Skipbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 56,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 242, 224, 245),
          borderRadius: BorderRadius.circular(4)),
      child: const Center(
        child: Text(
          'Skip',
          style: TextStyle(color: Colors.purple, fontSize: 14),
        ),
      ),
    );
  }
}
