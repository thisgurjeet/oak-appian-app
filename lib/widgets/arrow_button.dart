import 'package:flutter/material.dart';
import 'package:oak_appian/screens/welcome_screen2.dart';

class ArrowButton extends StatelessWidget {
  final VoidCallback onTap;

  const ArrowButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 196, 179, 236),
            ),
          ),
          Positioned(
            top: 21,
            left: 10,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 59, 22, 146),
              ),
            ),
          ),
          const Positioned(
            top: 51,
            left: 20,
            child: Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
