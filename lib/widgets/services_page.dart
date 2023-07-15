import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 229, 229),
            borderRadius: BorderRadius.circular(0),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 2,
                  color: Color.fromARGB(255, 165, 164, 164),
                  offset: Offset(1, 2))
            ]),
        padding: const EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height * 0.45,
        width: double.infinity,
      ),
      const Positioned(
          left: 28,
          top: 20,
          child: Image(image: AssetImage('assets/images/maskgroup.png'))),
      Positioned(
        left: 250,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.33,
          decoration: BoxDecoration(color: Color.fromARGB(255, 107, 17, 149)),
          child: Center(
            child: Text(
              'Recommended',
              style: GoogleFonts.getFont('Lexend',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      Positioned(
        top: 170,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/images/servic-icon.png')),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Signature',
                    style: GoogleFonts.getFont('Lexend',
                        fontSize: 21, color: Color.fromARGB(255, 69, 21, 127)),
                  )
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  const Icon(Icons.star_border_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'High Quality Disposable Cutlery',
                    style: GoogleFonts.getFont('Lexend',
                        color: Colors.black, fontSize: 16.5),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(Icons.star_border_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Elegant Decorations & Table settings',
                    style: GoogleFonts.getFont('Lexend',
                        color: Colors.black, fontSize: 16.5),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(Icons.star_border_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Served by Waitstaff',
                    style: GoogleFonts.getFont('Lexend',
                        color: Colors.black, fontSize: 16.5),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(Icons.star_border_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Best for Weddings, Corporate Event...',
                    style: GoogleFonts.getFont('Lexend',
                        color: Colors.black, fontSize: 16.5),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 140,
        top: 343,
        child: Center(
          child: Text('know more',
              style: GoogleFonts.getFont('Lexend',
                  fontSize: 18, color: const Color.fromARGB(255, 84, 18, 128))),
        ),
      )
    ]);
  }
}
