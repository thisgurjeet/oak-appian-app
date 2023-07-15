import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:oak_appian/widgets/services_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: size.height * 0.065),
          Text(
            'Hi, Monica!',
            style: GoogleFonts.getFont('Lexend',
                color: Color.fromARGB(255, 99, 24, 146), fontSize: 24),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'Current location',
                style: GoogleFonts.getFont('Lexend',
                    color: Colors.black45, fontSize: 16.5),
              ),
              Expanded(child: Container()),
              const Icon(
                Ionicons.play_circle_outline,
                color: Color.fromARGB(255, 99, 24, 146),
                size: 30,
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Ionicons.location_outline,
                color: Colors.black54,
                size: 25,
              ),
              Text(
                'Hyderabad',
                style: GoogleFonts.getFont('Lexend',
                    color: Colors.black, fontSize: 15),
              ),
              Expanded(child: Container()),
              Text('How it works?',
                  style: GoogleFonts.getFont('Lexend',
                      color: Colors.black45, fontSize: 15))
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Image(
                        image: AssetImage('assets/images/topview1.png'))),
              ),
              Positioned(
                  left: 15,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enjoy your first',
                        style: GoogleFonts.getFont('Lexend',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('order, the taste of',
                          style: GoogleFonts.getFont('Lexend',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('our delicious food!',
                          style: GoogleFonts.getFont('Lexend',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(
                            const BorderSide(
                              color: Color.fromARGB(255, 228, 221, 150),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ).copyWith(
                              style: BorderStyle.solid,
                              // Set the custom Path for dotted line
                              // In this example, it creates a dotted line with dots of size 5 and gaps of size 3
                              // Adjust the size values as per your preference
                            ),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Text(
                              'FIRSTPLATE01',
                              style: GoogleFonts.getFont(
                                'Lexend',
                                fontSize: 18,
                                color: const Color.fromARGB(255, 234, 226, 153),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: size.height * 0.07,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 2,
                      color: Color.fromARGB(255, 225, 224, 224),
                      offset: Offset(1, 2))
                ]),
            child: Row(children: [
              Text(
                'Search food or events',
                style: GoogleFonts.getFont('Lexend',
                    fontSize: 16.3, color: Colors.black45),
              ),
              Expanded(child: Container()),
              const Icon(
                Ionicons.search_outline,
                color: Color.fromARGB(255, 89, 27, 143),
              )
            ]),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Start Crafting',
              style: GoogleFonts.getFont('Lexend',
                  fontSize: 22, color: const Color.fromARGB(255, 86, 22, 126)),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          const Image(
            image: AssetImage('assets/images/platters1.png'),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const Image(
            image: AssetImage('assets/images/menu.png'),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Top Categories',
              style: GoogleFonts.getFont('Lexend',
                  fontSize: 22, color: Colors.black),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Image(image: AssetImage('assets/images/dishes.png')),
          SizedBox(
            height: size.height * 0.025,
          ),
          const Image(image: AssetImage('assets/images/stories.png')),
          SizedBox(
            height: size.height * 0.025,
          ),
          const Image(image: AssetImage('assets/images/maincourse.png')),
          SizedBox(
            height: size.height * 0.03,
          ),
          const ServicesPage(),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'How does it work?',
              style: GoogleFonts.getFont('Lexend',
                  fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          const Image(image: AssetImage('assets/images/guide.png')),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delicious food with',
                  style: GoogleFonts.getFont('Lexend',
                      fontSize: 24, color: Colors.black),
                ),
                Text(
                  'professional service !',
                  style: GoogleFonts.getFont('Lexend',
                      fontSize: 24, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          )
        ]),
      ),
    );
  }
}
