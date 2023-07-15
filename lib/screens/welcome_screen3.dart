import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oak_appian/screens/login_screen.dart';
import 'package:oak_appian/widgets/arrow_button.dart';
import 'package:oak_appian/widgets/skip_button.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Column(children: [
          SizedBox(
            height: size.height * 0.075,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Skipbutton(),
            ),
          ),
          //space
          SizedBox(
            height: size.height * 0.10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                height: size.height * 0.27,
                width: double.infinity,
                child: const Image(
                  image: AssetImage(
                    'assets/images/onboarding.png',
                  ),
                )),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          //text
          Text(
            'Personal Order Executive',
            style: GoogleFonts.getFont('Lexend',
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: size.height * 0.030,
          ),
          Text(
            'Embark on a personalized culinary journey',
            style: GoogleFonts.getFont('Lexend',
                fontWeight: FontWeight.w300,
                color: Colors.black54,
                fontSize: 16),
          ),
          const SizedBox(
            height: 2,
          ),
          Text('with our dedicated one-to-one customer',
              style: GoogleFonts.getFont('Lexend',
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                  fontSize: 16)),
          const SizedBox(
            height: 2,
          ),
          Text('support, ensuring a seamless and',
              style: GoogleFonts.getFont('Lexend',
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                  fontSize: 16)),
          const SizedBox(
            height: 2,
          ),
          Text('satisfying experience every step of the',
              style: GoogleFonts.getFont('Lexend',
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                  fontSize: 16)),
          Text('way.',
              style: GoogleFonts.getFont('Lexend',
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                  fontSize: 16)),
          //paragraph
          //lines
          SizedBox(
            height: size.height * 0.08,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 217, 191, 241)),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 10,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 217, 191, 241)),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 10,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 65, 13, 114)),
              ),
            ],
          ),
          //icon
          const SizedBox(
            height: 7,
          ),
          ArrowButton(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          )
        ]),
      ),
    );
  }
}
